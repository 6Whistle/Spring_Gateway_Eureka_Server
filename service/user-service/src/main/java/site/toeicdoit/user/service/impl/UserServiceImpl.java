package site.toeicdoit.user.service.impl;

import com.querydsl.core.types.dsl.StringPath;
import com.querydsl.jpa.impl.JPAQueryFactory;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.catalina.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import site.toeicdoit.user.domain.dto.LoginResultDto;
import site.toeicdoit.user.domain.dto.OAuth2UserDto;
import site.toeicdoit.user.domain.dto.UserDto;
import site.toeicdoit.user.domain.dto.UserNameProfileDto;
import site.toeicdoit.user.domain.model.QUserModel;
import site.toeicdoit.user.domain.model.RoleModel;
import site.toeicdoit.user.domain.model.UserModel;
import site.toeicdoit.user.domain.vo.Registration;
import site.toeicdoit.user.domain.vo.Role;
import site.toeicdoit.user.domain.vo.ExceptionStatus;
import site.toeicdoit.user.exception.UserException;
import site.toeicdoit.user.repository.RoleRepository;
import site.toeicdoit.user.service.UserService;
import site.toeicdoit.user.repository.UserRepository;

import java.util.*;
import java.util.stream.Stream;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final JPAQueryFactory queryFactory;
    private final QUserModel qUser = QUserModel.userModel;
    private final RoleRepository roleRepository;
    private final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @Override
    @Transactional
    public UserDto save(UserDto dto) {
        if (dto.getEmail().isEmpty() || dto.getPassword().isEmpty()) {
            throw new UserException(ExceptionStatus.INVALID_INPUT, "Email or password cannot be empty");
        } else {
            dto.setRegistration(Registration.LOCAL.name());
            dto.setPassword(passwordEncoder.encode(dto.getPassword()));
            UserModel saveUser = Stream.of(userRepository.save(dtoToEntity(dto)))
                    .map(i -> roleRepository.save(RoleModel.builder().role(0).userId(i).build()))
                    .map(RoleModel::getUserId)
                    .findFirst()
                    .orElseThrow(() -> new UserException(ExceptionStatus.BAD_REQUEST, "Bad Request"));
            return UserDto.builder()
                    .id(saveUser.getId())
                    .name(saveUser.getName())
                    .email(saveUser.getEmail())
                    .phone(saveUser.getPhone())
                    .roles(List.of(Role.getRole(0)))
                    .registration(saveUser.getRegistration())
                    .createdAt(saveUser.getCreatedAt())
                    .updatedAt(saveUser.getUpdatedAt())
                    .build();
        }
    }

    @Override
    @Transactional
    public LoginResultDto oauthJoinOrLogin(OAuth2UserDto dto, String registration) {
        if (dto.getEmail().isEmpty() || registration.isEmpty()) {
            throw new UserException(ExceptionStatus.INVALID_INPUT, "Email or registration cannot be empty");
        } else {
            UserModel user = userRepository.findByEmail(dto.getEmail())
                    .stream()
                    .peek(i -> i.setName(dto.getName()))
                    .peek(i -> i.setProfile(dto.getProfile()))
                    .findAny()
                    .orElseGet(() -> UserModel.builder()
                            .email(dto.getEmail())
                            .name(dto.getName())
                            .profile(dto.getProfile())
                            .oauthId(dto.getId())
                            .registration(registration)
                            .build());
            if (existByEmail(dto.getEmail())) {
                if (user.getRegistration().equals(Registration.GOOGLE.name())) {
                    var existOauthUpdate = userRepository.save(user);
                    return LoginResultDto.builder()
                            .user(UserDto.builder()
                                    .id(existOauthUpdate.getId())
                                    .email(existOauthUpdate.getEmail())
                                    .roles(existOauthUpdate.getRoleIds().stream().map(i -> Role.getRole(i.getRole())).toList())
                                    .registration(existOauthUpdate.getRegistration())
                                    .build())
                            .build();
                } else {
                    throw new UserException(ExceptionStatus.UNAUTHORIZED, "local에 이미 가입된 정보가 있습니다.");
                }
            } else {
                RoleModel saveOauth = Stream.of(userRepository.save(user))
                        .map(i -> roleRepository.save(RoleModel.builder().role(0).userId(i).build()))
                        .findFirst().orElseThrow(() -> new UserException(ExceptionStatus.INTERNAL_SERVER_ERROR, "Internal Server Error"));
                return LoginResultDto.builder()
                        .user(UserDto.builder()
                                .id(saveOauth.getUserId().getId())
                                .email(saveOauth.getUserId().getEmail())
                                .roles(List.of(Role.getRole(saveOauth.getRole())))
                                .registration(saveOauth.getUserId().getRegistration())
                                .build())
                        .build();
            }
        }
    }

    @Override
    @Transactional
    public LoginResultDto login(UserDto dto) {
        if (dto.getEmail().isEmpty() || dto.getPassword().isEmpty()) {
            throw new UserException(ExceptionStatus.INVALID_INPUT, "Email or password cannot be empty");
        } else {
            if (dto.getEmail().equals("admin@test.com")) {
                UserModel adminAccount = userRepository.findByEmail(dto.getEmail())
                        .orElseThrow(() -> new UserException(ExceptionStatus.NOT_FOUND, "Email not found"));
                if (adminAccount.getPassword().equals(dto.getPassword())) {
                    return LoginResultDto.builder()
                            .user(UserDto.builder()
                                    .id(adminAccount.getId())
                                    .email(adminAccount.getEmail())
                                    .roles(adminAccount.getRoleIds()
                                            .stream().map(i -> Role.getRole(i.getRole())).toList())
                                    .registration("LOCAL")
                                    .build())
                            .build();
                } else {
                    throw new UserException(ExceptionStatus.UNAUTHORIZED, "wrong password");
                }
            }
            UserModel existEmail = userRepository.findByEmail(dto.getEmail())
                    .orElseThrow(() -> new UserException(ExceptionStatus.NOT_FOUND, "Email not found"));
            if (passwordEncoder.matches(dto.getPassword(), existEmail.getPassword())) {
                return LoginResultDto.builder()
                        .user(UserDto.builder()
                                .id(existEmail.getId())
                                .email(existEmail.getEmail())
                                .roles(existEmail.getRoleIds().stream().map(i -> Role.getRole(i.getRole())).toList())
                                .registration(existEmail.getRegistration())
                                .build())
                        .build();
            } else {
                throw new UserException(ExceptionStatus.UNAUTHORIZED, "wrong password");
            }
        }
    }

    @Override
    public Boolean existByEmail(String email) {
        return userRepository.existsByEmail(email);
    }

    @Override
    public void deleteById(Long id) {
        if (existById(id)) {
            userRepository.deleteById(id);
        } else {
            throw new UserException(ExceptionStatus.NOT_FOUND, "id not found");
        }
    }

    @Override
    public List<UserDto> findAll() {
        return userRepository.findAll().stream().map(this::entityToDto).toList();
    }

    @Override
    public UserDto findById(Long id) {
        return userRepository.findById(id)
                .map(this::entityToDto)
                .orElseThrow(() -> new UserException(ExceptionStatus.NOT_FOUND, "User not found"));
    }

    @Override
    public UserDto findByEmail(String email) {
        return userRepository.findByEmail(email).map(this::entityToDto)
                .orElseThrow(() -> new UserException(ExceptionStatus.NOT_FOUND, "User Email not found"));
    }

    @Override
    public Boolean existById(Long id) {
        return userRepository.existsById(id);
    }

    @Override
    @Transactional
    public Boolean modifyByPassword(String email, String oldPassword, String newPassword) {
        if (!email.isEmpty() && existByEmail(email)) {
            UserModel updateUser = userRepository.findByEmail(email)
                    .orElseThrow(() -> new UserException(ExceptionStatus.NOT_FOUND, "User not found"));
            if (passwordEncoder.matches(oldPassword, updateUser.getPassword())) {
                long result = queryFactory.update(qUser)
                        .set(qUser.password, passwordEncoder.encode(newPassword))
                        .where(qUser.id.eq(updateUser.getId()))
                        .execute();
                return result == 1 ? Boolean.TRUE : Boolean.FALSE;
            } else {
                throw new UserException(ExceptionStatus.UNAUTHORIZED, "비밀번호가 다릅니다.");
            }
        } else {
            throw new UserException(ExceptionStatus.NOT_FOUND, "Email 정보가 존재하지 않습니다.");
        }
    }

    @Override
    @Transactional
    public UserDto modifyByNameAndPhone(UserDto dto) {
        if (dto.getId() != null && existById(dto.getId())) {
            long result = queryFactory.update(qUser)
                    .set(qUser.name, dto.getName())
                    .set(qUser.phone, dto.getPhone())
                    .where(qUser.id.eq(dto.getId()))
                    .execute();
            if (result == 1) {
                return findById(dto.getId());
            } else {
                throw new UserException(ExceptionStatus.BAD_REQUEST, "modify fail");
            }
        } else {
            throw new UserException(ExceptionStatus.NOT_FOUND, "계정이 존재하지 않습니다.");
        }
    }

    @Override
    public List<UserNameProfileDto> findByNameAndProfile(Map<String, List<Long>> ids) {
        List<UserNameProfileDto> userList = new ArrayList<>();
        for (List<Long> list : ids.values()) {
            for (Long id : list) {
                UserDto user = findById(id);
                userList.add(UserNameProfileDto.builder().userId(user.getId().toString())
                        .name(user.getName())
                        .profile(user.getProfile() == null ? "" : user.getProfile())
                        .build());
            }
        }
        return userList;
    }


    @Override
    @Transactional
    public UserDto modifyByKeyword(Long id, String keyword, String info) {
        if (id == null || keyword.isEmpty() && info.isEmpty()){
            throw new UserException(ExceptionStatus.INVALID_INPUT, "id or keyword cannot be empty");
        } else if (existById(id)) {
            StringPath updateSet = switch (keyword) {
                case "email" -> qUser.email;
                case "profile" -> qUser.profile;
                case "phone" -> qUser.phone;
                case "name" -> qUser.name;
                case "toeicLevel" -> qUser.toeicLevel;
                default -> throw new UserException(ExceptionStatus.NOT_FOUND, "Keyword not found");
            };
            var updateUser = findById(id);
            long result = queryFactory
                    .update(qUser)
                    .set(updateSet, info)
                    .where(qUser.id.eq(updateUser.getId()))
                    .execute();
            if (result == 1) {
                return findById(id);
            } else {
                throw new UserException(ExceptionStatus.BAD_REQUEST, "modify fail");
            }
        } else {
            throw new UserException(ExceptionStatus.NOT_FOUND, "Email이 존재하지 않습니다.");
        }
    }
}
