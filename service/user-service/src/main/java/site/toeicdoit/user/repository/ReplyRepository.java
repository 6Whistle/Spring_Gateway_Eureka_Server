package site.toeicdoit.user.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import site.toeicdoit.user.domain.model.ReplyModel;

@Repository
public interface ReplyRepository extends JpaRepository<ReplyModel, Long> {
}
