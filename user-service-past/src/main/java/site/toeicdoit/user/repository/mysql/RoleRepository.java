package site.toeicdoit.user.repository.mysql;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import site.toeicdoit.user.domain.model.mysql.RoleModel;

@Repository
public interface RoleRepository extends JpaRepository<RoleModel, Long> {
}
