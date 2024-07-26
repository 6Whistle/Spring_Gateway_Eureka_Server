package site.toeicdoit.tx.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import site.toeicdoit.tx.domain.model.ProductModel;


@Repository
public interface ProductRepository extends JpaRepository<ProductModel, Long> {


//    @Modifying
//    @Transactional
//    @Query(value = "UPDATE products p SET p.subscribeDate = p.subscribeDate - 1 WHERE p.subscribeDate IS NOT NULL  " )
//    void decrementSubscribeDate();
//
//
//    @Modifying
//    @Transactional
//    @Query(value = "UPDATE products p SET p.subscribeDate = 0 WHERE p.subscribeDate < 0 " )
//    void UpdateSubscribeDate();
}
