package site.toeicdoit.user.repository.mysql;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import site.toeicdoit.user.domain.model.mysql.BoardModel;

@Repository
public interface BoardRepository extends JpaRepository<BoardModel, Long> {
}
