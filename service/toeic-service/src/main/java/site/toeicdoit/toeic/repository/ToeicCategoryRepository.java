package site.toeicdoit.toeic.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import site.toeicdoit.toeic.domain.model.mysql.ToeicCategoryModel;



@Repository
public interface ToeicCategoryRepository extends JpaRepository<ToeicCategoryModel, Long> {




}
