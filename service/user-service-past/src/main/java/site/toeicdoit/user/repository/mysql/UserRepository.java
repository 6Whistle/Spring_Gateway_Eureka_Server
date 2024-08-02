package site.toeicdoit.user.repository.mysql;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import site.toeicdoit.user.domain.model.mysql.QRoleModel;
import site.toeicdoit.user.domain.model.mysql.QUserModel;
import site.toeicdoit.user.domain.model.mysql.UserModel;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<UserModel, Long> {


    Optional<UserModel> findByEmail(String email);

    Boolean existsByEmail(String email);
}
