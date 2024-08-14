package site.toeicdoit.toeic.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import site.toeicdoit.toeic.domain.model.mysql.ResultModel;


import java.util.List;
import java.util.Optional;


@Repository
public interface ResultRepository extends JpaRepository<ResultModel, Long> {


    Optional<ResultModel> findByUserId_IdAndToeicCategoryId_IdAndId(Long userId, Long toeicCategoryId, Long id);

    @Query("select rm from ResultModel rm where rm.userId.id = :userId ")
    List<ResultModel> findByResultId(@Param("userId") Long userId);


}
