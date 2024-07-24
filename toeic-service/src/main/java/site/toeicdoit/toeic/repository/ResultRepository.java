package site.toeicdoit.toeic.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import site.toeicdoit.toeic.domain.model.mysql.ResultModel;


@Repository
public interface ResultRepository extends JpaRepository<ResultModel, Long> {
}
