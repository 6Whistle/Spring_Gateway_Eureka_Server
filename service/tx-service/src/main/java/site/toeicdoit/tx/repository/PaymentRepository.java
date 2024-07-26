package site.toeicdoit.tx.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import site.toeicdoit.tx.domain.model.PaymentModel;
import site.toeicdoit.tx.repository.dsl.PaymentDao;


@Repository
public interface PaymentRepository extends JpaRepository<PaymentModel, Long> , PaymentDao {

    @Query("SELECT p.id FROM PaymentModel p WHERE p.paymentUid = :paymentUid")
    Long findIdByPaymentUid(@Param("paymentUid") String paymentUid);


//    @Query("select p from payments p where p.userId.id = :userId ORDER BY p.id desc")
//    List<PaymentModel> getPaymentByUserId(@Param("userId") Long userId);
}
