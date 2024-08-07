package site.toeicdoit.toeic.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import site.toeicdoit.toeic.domain.model.mysql.ToeicModel;

import java.util.Optional;

@Repository
public interface ToeicRepository extends JpaRepository<ToeicModel, Long> {


    @Query("select t from ToeicModel t order by rand() limit 1")
    Optional<ToeicModel> findRandomQuiz();
    //optionmodel이 toeicmodel join해서 나오게 하기

 }
