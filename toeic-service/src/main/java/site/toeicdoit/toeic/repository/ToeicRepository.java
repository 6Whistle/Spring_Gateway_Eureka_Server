package site.toeicdoit.toeic.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import site.toeicdoit.toeic.domain.model.mysql.ToeicModel;


import java.util.List;

@Repository
public interface ToeicRepository extends JpaRepository<ToeicModel, Long>{

//    @Query("SELECT t FROM toeic t ORDER BY RAND() limit 1")
//    List<ToeicModel> findRandomQuiz();

}
