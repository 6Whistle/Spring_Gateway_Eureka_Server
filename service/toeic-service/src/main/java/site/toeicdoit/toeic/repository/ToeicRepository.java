package site.toeicdoit.toeic.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import site.toeicdoit.toeic.domain.model.mysql.ToeicCategoryModel;
import site.toeicdoit.toeic.domain.model.mysql.ToeicModel;

import java.util.List;

@Repository
public interface ToeicRepository extends JpaRepository<ToeicModel, Long> {



    @Query("select tm from ToeicModel tm where tm.id = :userId")
    List<ToeicModel> findAllByUserId(@Param("userId") Long userId);
}
