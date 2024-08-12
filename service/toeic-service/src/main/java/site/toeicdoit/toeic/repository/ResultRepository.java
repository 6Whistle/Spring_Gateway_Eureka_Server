package site.toeicdoit.toeic.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import site.toeicdoit.toeic.domain.model.mysql.ResultModel;
import site.toeicdoit.toeic.domain.model.mysql.ToeicCategoryModel;
import site.toeicdoit.toeic.domain.model.mysql.UserModel;

import java.util.Optional;


@Repository
public interface ResultRepository extends JpaRepository<ResultModel, Long> {


//    @Query("SELECT r FROM ResultModel r WHERE r.userId = :userId AND r.toeicCategoryId = :toeicCategoryId AND r.userAnswer = :userAnswer")
//    ResultModel findByUserIdAndToeicCategoryIdAndUserAnswer(@Param("userId") UserModel userId,
//                                                            @Param("toeicCategoryId") ToeicCategoryModel toeicCategoryId,
//                                                            @Param("userAnswer") String userAnswer);

    Optional<ResultModel> findByUserIdAndToeicCategoryIdAndUserAnswer(UserModel userModel, ToeicCategoryModel toeicCategoryModel, String userAnswer);

}
