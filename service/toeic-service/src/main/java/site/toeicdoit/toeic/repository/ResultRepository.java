package site.toeicdoit.toeic.repository;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import site.toeicdoit.toeic.domain.model.mysql.ResultModel;
import site.toeicdoit.toeic.domain.model.mysql.ToeicCategoryModel;
import site.toeicdoit.toeic.domain.model.mysql.UserModel;


import java.util.List;
import java.util.Optional;


@Repository
public interface ResultRepository extends JpaRepository<ResultModel, Long> {


    Optional<ResultModel> findByUserId_IdAndToeicCategoryId_IdAndId(Long userId, Long toeicCategoryId, Long id);

    @Query("select rm from ResultModel rm where rm.userId.id = :userId ")
    List<ResultModel> findByResultId(@Param("userId") Long userId);

    @Query("select rm.updatedAt, rm.score from ResultModel rm where rm.userId.id = :userId and rm.toeicCategoryId.id = :categoryId")
    List<Object[]> findByUserIdAndToeicCategoryId(@Param("userId") Long userId, @Param("categoryId") Long categoryId);

    List<ResultModel> findByUserId(UserModel userId, Pageable pageable);

    @Query("SELECT r FROM ResultModel r WHERE r.userId.id = :userId AND r.toeicCategoryId.id = :categoryId")
    List<ResultModel> findByUserIdAndToeicCategoryId(Long userId, Long categoryId, Pageable pageable);


}
