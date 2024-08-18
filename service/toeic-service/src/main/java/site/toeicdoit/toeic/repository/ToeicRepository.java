package site.toeicdoit.toeic.repository;


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


    @Query("SELECT tm FROM ToeicModel tm WHERE tm.toeicCategoryId.testType = 'exam' ")
    List<ToeicModel> findAllByExam();

    @Query("select tm from ToeicModel tm where tm.toeicCategoryId.testType = 'test'")
    List<ToeicModel> findAllByTest();

    @Query("select tm from ToeicModel tm join tm.toeicCategoryId tcm where tcm.testType = 'level' and tm.level = :level")
    List<ToeicModel> findAllByLevel(@Param("level") Long level);

    @Query("select tm from ToeicModel tm join tm.toeicCategoryId tcm where tcm.testType = 'part' and tm.part = :part")
    List<ToeicModel> findAllByPart(@Param("part") String part);





}
