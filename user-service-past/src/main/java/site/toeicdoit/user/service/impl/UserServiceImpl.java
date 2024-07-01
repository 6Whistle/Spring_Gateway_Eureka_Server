package site.toeicdoit.user.service.impl;


import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import site.toeicdoit.user.domain.dto.UserDto;
import site.toeicdoit.user.domain.model.jpa.UserModel;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.service.UserService;
import site.toeicdoit.user.repository.jpa.UserRepository;

import java.util.*;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserServiceImpl implements UserService {

    private final UserRepository repository;

    @Override
    public Messenger save(UserDto dto) {
        var ent = repository.save(dtoToEntity(dto));
        System.out.println(" ============ UserServiceImpl save instanceof =========== ");
        System.out.println((ent instanceof UserModel) ? "SUCCESS" : "FAILURE");
        return Messenger.builder()
                .message((ent instanceof UserModel) ? "SUCCESS" : "FAILURE")
                .build();
    }

    @Transactional
    @Override
    public Messenger deleteById(Long id) {
        log.info("deleteById Impl: " + id);

        // Check if the user exists before attempting to delete
        if (repository.existsById(id)) {
            repository.deleteById(id); // This will now trigger cascading deletes
            return Messenger.builder().message("SUCCESS").build();
        } else {
            return Messenger.builder().message("FAILURE").build();
        }
    }

    @Override
    public Messenger modify(UserDto userDto) {
        return null;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return null;
    }

    @Override
    public List<UserDto> findAll() {
        return List.of();
    }

    @Override
    public Optional<UserDto> findById(Long id) {
        return Optional.empty();
    }

    @Override
    public Boolean existsById(Long id) {
        return null;
    }

//    @Override
//    public List<UserDto> findAll() {
//        return repository.findAll().stream().map(i -> entityToDto(i)).toList();
//    }
//
//    @Override
//    public Optional<UserDto> findById(Long id) {
//        return repository.findById(id).map(i -> entityToDto(i));
//    }
//
//    @Override
//    public Messenger count() {
//        return Messenger.builder()
//                .message(repository.count() + "")
//                .build();
//    }
//
//    @Override
//    public Boolean existsById(Long id) {
//        return repository.existsById(id);
//    }
//
//    @Transactional
//    @Override
//    public Messenger modify(UserDto dto) {
//        log.info("UserModel modify Impl: {}", dto);
//
//        UserModel ent = dtoToEntity(dto);
//        Long id = dto.getId();
//        String password = dto.getPassword();
//        String job = dto.getJob(); // Assuming you have a username field
//        String addressId = dto.getAddressId();       // Assuming you have an email field
//        // Add other fields as necessary
//
//        repository.updateUserById(id, password, job, addressId);
//
//        System.out.println((ent instanceof UserModel) ? "SUCCESS" : "FAILURE");
//        return Messenger.builder()
//                .message((ent instanceof UserModel) ? "SUCCESS" : "FAILURE")
//                .build();
//    }
//
//    @Override
//    public List<UserDto> findUsersByName(String name) {
//        return repository.findUsersByName(name).stream().map(i -> entityToDto(i)).toList();
//    }
//
//    @Override
//    public List<UserDto> findUsersByJob(String job) {
//        return repository.findUsersByJob(job).stream().map(i -> entityToDto(i)).toList();
//    }
//
//    @Override
//    public Optional<UserModel> findUserByUsername(String username) {
//        return repository.findUserByUsername(username);
//    }
//
//    // SRP에 따라 아이디 존재여부를 프론트에서 먼저 판단하고 넘어옴(시큐리티 SOLID 5대 원칙)
//    // findUserByUsername(dto.getUsername()).get().getPassword().equals(dto.getPassword())?"S":"F"
//    @Transactional
//    @Override
//    public Messenger login(UserDto dto) {
//        log.info("login Impl: " + dto);
//        var user = repository.findUserByUsername(dto.getUsername()).get();
//        var accessToken = jwt.createToken(entityToDto(user));
//        var flag = user.getPassword().equals(dto.getPassword());
//
//        // 토큰을 각 섹션(Header, Payload, Signature)으로 분할
//        jwt.printPayload(accessToken);
//        repository.modifyTokenByToken(user.getId(), accessToken);
//        return Messenger.builder()
//                .message(flag ? "SUCCESS" : "FAILURE")
//                .accessToken(flag ? accessToken : "None")
//                .build();
//    }
//
//    @Override
//    public Messenger existsByUsername(String username) {
//        log.info("existsByUsername Impl: " + username);
//        boolean flag = false;
//        flag = repository.existsByUsername(username) != null;
//        log.info("existsByUsername flag: " + flag);
//        return Messenger.builder()
//                .message(flag ? "SUCCESS" : "FAILURE")
//                .build();
//    }
//
//    @Transactional
//    @Override
//    public Boolean logout(String accessToken) {
//        log.info("logout Impl accessToken: " + accessToken);
//        String noBearerToken = accessToken.substring(7);
//        log.info("logout Impl noBearerToken: " + noBearerToken);
//        Long id = jwt.getPayload(noBearerToken).get("userId", Long.class);
//        log.info("logout Impl id: " + id);
//        repository.modifyTokenByToken(id, null);
//        return repository.findById(id).get().getAccessToken() == null;
//    }
}
