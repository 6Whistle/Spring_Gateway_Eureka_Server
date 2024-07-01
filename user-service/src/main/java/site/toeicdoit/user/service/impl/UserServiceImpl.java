package site.toeicdoit.user.service.impl;

import com.querydsl.jpa.impl.JPAQueryFactory;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import site.toeicdoit.user.domain.dto.UserDto;
import site.toeicdoit.user.domain.model.mysql.QUserModel;
import site.toeicdoit.user.domain.model.mysql.UserModel;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.domain.vo.Role;
import site.toeicdoit.user.service.UserService;
import site.toeicdoit.user.repository.mysql.UserRepository;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserServiceImpl implements UserService {

    private final UserRepository repository;
    private final JPAQueryFactory queryFactory;
    private final QUserModel user = QUserModel.userModel;

    @Override
    public Messenger save(UserDto dto) {
        log.info(">>> user save Impl 진입: {} ", dto);
        var result = repository.save(dtoToEntity(dto));
        log.info(">>> user save result : {}", result);

        return Messenger.builder()
                .message("SUCCESS")
                .build();
    }

    @Transactional
    @Override
    public Messenger deleteById(Long id) {
        log.info(">>> user deleteById Impl 진입: {} ", id);

        // Check if the user exists before attempting to delete
        if (repository.existsById(id)) {
            repository.deleteById(id); // This will now trigger cascading deletes
            return Messenger.builder().message("SUCCESS").build();
        } else {
            return Messenger.builder().message("FAILURE").build();
        }
    }

    @Override
    public List<UserDto> findAll() {
        return repository.findAll().stream().map(this::entityToDto).toList();
    }

    @Override
    public Optional<UserDto> findById(Long id) {
        return repository.findById(id).map(this::entityToDto);
    }

    @Override
    public Messenger count() {
        return Messenger.builder()
                .message(repository.count() + "")
                .build();
    }

    @Override
    public Boolean existsById(Long id) {
        return repository.existsById(id);
    }

    @Transactional
    @Override
    public Messenger modify(UserDto dto) {
        log.info(">>> user modify Impl 진입: {}", dto);

        UserModel ent = dtoToEntity(dto);

        String result = repository.findById(ent.getId()).stream().map(repository::save).toString();
        log.info(">>> user modify result : {}", result);

        System.out.println((ent instanceof UserModel) ? "SUCCESS" : "FAILURE");
        return Messenger.builder()
                .message((ent instanceof UserModel) ? "SUCCESS" : "FAILURE")
                .build();
    }

    @Transactional
    @Override
    public Role localLogin(UserDto dto) {
        log.info(">>> localLogin Impl 진입: {} ", dto);
        var userModel = repository.findByEmail(dto.getEmail()).get();
        var flag = userModel.getPassword().equals(dto.getPassword());

        return null;
    }

    @Override
    public Messenger existsByEmail(String email) {
        log.info(">>> existsByEmail Impl 진입: {}", email);
        boolean flag = false;
        flag = repository.existsByEmail(email) != null;
        log.info("existsByEmail flag: " + flag);
        return Messenger.builder()
                .message(flag ? "SUCCESS" : "FAILURE")
                .build();
    }

}
