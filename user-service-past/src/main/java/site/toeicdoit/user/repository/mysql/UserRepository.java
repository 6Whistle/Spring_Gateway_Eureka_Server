package site.toeicdoit.user.repository.mysql;

import org.springframework.data.jpa.repository.JpaRepository;
import site.toeicdoit.user.domain.model.mysql.UserModel;

import java.util.Optional;

public interface UserRepository extends JpaRepository<UserModel, Long> {

    Optional<UserModel> findByEmail(String email);

    Boolean existsByEmail(String email);
}
