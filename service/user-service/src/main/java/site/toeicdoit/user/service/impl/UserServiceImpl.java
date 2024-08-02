package site.toeicdoit.user.service.impl;

import com.querydsl.core.types.dsl.StringPath;
import com.querydsl.jpa.impl.JPAQueryFactory;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import site.toeicdoit.user.domain.dto.LoginResultDto;
import site.toeicdoit.user.domain.dto.OAuth2UserDto;
import site.toeicdoit.user.domain.dto.UserDto;
import site.toeicdoit.user.domain.model.mysql.*;
import site.toeicdoit.user.domain.vo.MessageStatus;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.domain.vo.Registration;
import site.toeicdoit.user.domain.vo.Role;
import site.toeicdoit.user.repository.mysql.CalendarRepository;
import site.toeicdoit.user.repository.mysql.RoleRepository;
import site.toeicdoit.user.service.UserService;
import site.toeicdoit.user.repository.mysql.UserRepository;

import java.util.*;
import java.util.stream.Stream;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final JPAQueryFactory queryFactory;
    private final QUserModel qUser = QUserModel.userModel;
    private final QRoleModel qRole = QRoleModel.roleModel;
    private final RoleRepository roleRepository;
    private final CalendarRepository calendarRepository;
    private final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @Override
    public Messenger save(UserDto dto) {
        log.info(">>> user save Impl 진입: {} ", dto);
        dto.setRegistration(Registration.LOCAL.name());
        dto.setPassword(passwordEncoder.encode(dto.getPassword()));

        var joinUser = userRepository.save(dtoToEntity(dto));
        log.info(">>> user save 결과 : {}", joinUser);
        var joinUserRole = roleRepository.save(RoleModel.builder().role(0).userId(joinUser).build());
        log.info(">>> ROLE save 결과 : {}", joinUserRole);
        var joinUserCalendar = calendarRepository.save(CalendarModel.builder().userId(joinUser).build());
        log.info(">>> 캘린더 save 결과 : {}", joinUserCalendar);

        return Messenger.builder()
                .message(MessageStatus.SUCCESS.name())
                .build();
    }

    @Override
    public LoginResultDto oauthJoinOrLogin(OAuth2UserDto dto, String registration) {
        log.info(">>> oauthJoin Impl 진입: {}", dto);
        UserModel user = userRepository.findByEmail(dto.email())
                .stream()
                .peek(i -> i.setName(dto.name()))
                .peek(i -> i.setProfile(dto.profile()))
                .findAny()
                .orElseGet(() -> UserModel.builder()
                        .email(dto.email())
                        .name(dto.name())
                        .profile(dto.profile())
                        .oauthId(dto.id())
                        .registration(registration)
                        .build());
        if (user.getRegistration().equals(Registration.GOOGLE.name())) {
            if (existByEmail(dto.email())) {
                var existOauthUpdate = userRepository.save(user);
                return LoginResultDto.builder()
                        .user(UserDto.builder()
                                .id(existOauthUpdate.getId())
                                .email(existOauthUpdate.getEmail())
                                .roles(existOauthUpdate.getRoleIds().stream().map(i -> Role.getRole(i.getRole())).toList())
                                .build())
                        .build();
            } else {
                var saveUser = userRepository.save(user);
                var roleSave = roleRepository.save(RoleModel.builder().role(0).userId(saveUser).build());
                var calendarSave = calendarRepository.save(CalendarModel.builder().userId(roleSave.getUserId()).build());

                return LoginResultDto.builder()
                        .user(UserDto.builder()
                                .id(saveUser.getId())
                                .email(saveUser.getEmail())
                                .roles(Stream.of(roleSave.getRole()).map(Role::getRole).toList())
                                .build())
                        .build();
            }
        } else {
            return null;
        }
    }


    @Transactional
    @Override
    public LoginResultDto login(UserDto dto) {
        log.info(">>> localLogin Impl 진입: {} ", dto);
        var existEmail = userRepository.findByEmail(dto.getEmail()).get();

        return passwordEncoder.matches(dto.getPassword(), existEmail.getPassword()) ?
                LoginResultDto.builder()
                        .user(UserDto.builder()
                                .id(existEmail.getId())
                                .email(existEmail.getEmail())
                                .roles(existEmail.getRoleIds().stream().map(i -> Role.getRole(i.getRole())).toList())
                                .build())
                        .build() : null; // 비번 틀릴 경우 에러 처리 필요
    }

    @Override
    public Boolean existByEmail(String email) {
        log.info(">>> existsByEmail Impl 진입: {}", email);
        return userRepository.existsByEmail(email);
    }


    @Transactional
    @Override
    public Messenger deleteById(Long id) {
        log.info(">>> user deleteById Impl 진입: {} ", id);

        if (userRepository.existsById(id)) {
            userRepository.deleteById(id);
            return Messenger.builder().message(MessageStatus.SUCCESS.name()).build();
        } else {
            return Messenger.builder().message(MessageStatus.FAILURE.name()).build();
        }
    }

    @Override
    public List<UserDto> findAll() {
        return userRepository.findAll().stream().map(this::entityToDto).toList();
    }

    @Override
    public Optional<UserDto> findById(Long id) {
        log.info("user findById 결과 : {}", userRepository.findById(id).map(this::entityToDto));
        // 결과 보고 없을 경우도 코딩 필요
        return userRepository.findById(id).map(this::entityToDto);
    }

    @Override
    public Optional<UserDto> findByEmail(String email) {
        return userRepository.findByEmail(email).map(this::entityToDto);
    }

    @Override
    public Messenger countAll() {
        return Messenger.builder()
                .count(userRepository.count())
                .build();
    }

    @Override
    public Boolean existById(Long id) {
        return userRepository.existsById(id);
    }

    @Transactional
    @Override
    public Messenger modify(UserDto dto) {
        log.info(">>> user modify Impl 진입: {}", dto);
        var updateUser = queryFactory.update(qUser)
                .set(qUser.name, dto.getName())
                .set(qUser.email, dto.getEmail())
                .set(qUser.profile, dto.getProfile())
                .where(qUser.id.eq(dto.getId()))
                .execute();

        log.info(">>> user modify Impl 결과 : {}", updateUser);

        return Messenger.builder()
                .message(MessageStatus.SUCCESS.name())
                .build();
    }

    @Override
    @Transactional
    public Messenger modifyByPassword(UserDto dto) {
        if (userRepository.existsByEmail(dto.getEmail())) {
            var updateUser = userRepository.findByEmail(dto.getEmail()).get();
            if (passwordEncoder.matches(dto.getPassword(), updateUser.getPassword())) {
                queryFactory.update(qUser)
                        .set(qUser.password, passwordEncoder.encode(dto.getNewPassword()))
                        .where(qUser.id.eq(updateUser.getId()))
                        .execute();
                return Messenger.builder().message(MessageStatus.SUCCESS.name()).build();
            } else {
                return Messenger.builder().message("이전 비밀번호와 다릅니다.").build();
            }
        } else {
            return Messenger.builder().message("email 정보가 존재하지 않습니다.").build();
        }
    }

    @Override
    @Transactional
    public Messenger modifyByKeyword(UserDto dto) {
        StringPath updateSet = null;

        switch (dto.getUpdateKeyword()) {
            case "email":
                updateSet = qUser.email;
                break;
            case "profile":
                updateSet = qUser.profile;
                break;
            case "phone":
                updateSet = qUser.phone;
                break;
            case "name":
                updateSet = qUser.name;
                break;
            default:
                break;
        }

        if (updateSet != null) {
            if (userRepository.existsByEmail(dto.getEmail())) {
                var updateUser = userRepository.findByEmail(dto.getEmail()).get();
                queryFactory.update(qUser).set(updateSet, dto.getUpdateInfo()).where(qUser.id.eq(updateUser.getId())).execute();
                return Messenger.builder().message(MessageStatus.SUCCESS.name()).build();
            } else {
                return Messenger.builder().message("email 정보가 존재하지 않습니다람쥐 히히").build();
            }
        } else {
            return Messenger.builder().message("Keyword를 잘못 입력했습니다.").build();
        }
    }

    @Transactional
    @Override
    public Messenger modifyByNameAndPhone(UserDto dto) {
        log.info(">>> user modifyByNameAndPhone Impl 진입: {}", dto);
        long user = queryFactory.update(qUser)
                .set(qUser.name, dto.getName())
                .set(qUser.phone, dto.getPhone())
                .where(qUser.id.eq(dto.getId()))
                .execute();

        log.info(">>> user modifyByNameAndPhone Impl 결과 : {}", user);

        return Messenger.builder()
                .message(MessageStatus.SUCCESS.name())
                .build();
    }

}
