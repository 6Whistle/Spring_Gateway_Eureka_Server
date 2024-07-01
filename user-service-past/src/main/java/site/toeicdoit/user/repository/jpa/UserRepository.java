package site.toeicdoit.user.repository.jpa;

import org.springframework.data.repository.CrudRepository;

import site.toeicdoit.user.domain.model.jpa.UserModel;
import site.toeicdoit.user.repository.dsl.CustomUserRepository;

import java.util.Optional;

public interface UserRepository extends CrudRepository<UserModel, Long>, CustomUserRepository {
    Optional<UserModel> findByEmail(String email);
}
