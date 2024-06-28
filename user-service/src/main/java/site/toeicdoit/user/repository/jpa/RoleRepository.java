package site.toeicdoit.user.repository.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import site.toeicdoit.user.domain.model.jpa.RoleModel;

@Repository
public interface RoleRepository extends JpaRepository<RoleModel, Long> {
}
