package site.toeicdoit.toeic.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import site.toeicdoit.toeic.domain.model.mysql.ToeicCategoryModel;

import java.util.List;

@Repository
public interface ToeicCategoryRepository extends JpaRepository<ToeicCategoryModel, Long> {


    @Query("select tcm from ToeicCategoryModel tcm where tcm.testType = 'exam'")
    List<ToeicCategoryModel> findAllByExam();

    @Query("select tcm from ToeicCategoryModel tcm where tcm.testType = 'test'")
    List<ToeicCategoryModel> findAllByTest();

    @Query("select tcm from ToeicCategoryModel tcm join tcm.toeicIds tm where tcm.testType = 'level' and tm.level = :level")
    List<ToeicCategoryModel> findAllByLevel(@Param("level") Long level);

    @Query("select tcm from ToeicCategoryModel tcm join tcm.toeicIds tm where tcm.testType = 'part' and tm.part = :part")
    List<ToeicCategoryModel> findAllByPart(@Param("part") String part);


}
