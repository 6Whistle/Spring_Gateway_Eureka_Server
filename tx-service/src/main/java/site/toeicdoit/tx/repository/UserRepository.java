package site.toeicdoit.tx.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import site.toeicdoit.tx.domain.model.UserModel;


import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<UserModel,Long> {

    List<UserModel> findUsersByName(String name);






    List<UserModel> findAllByOrderByIdDesc();
}
