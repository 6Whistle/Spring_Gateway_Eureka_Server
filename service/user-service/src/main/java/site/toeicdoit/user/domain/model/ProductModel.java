package site.toeicdoit.user.domain.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Getter
@Builder
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@ToString(exclude = "id")
public class ProductModel extends BaseModel {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name ="id", nullable = false)
    private Long id;
    @Setter
    private String name;
    @Setter
    private Integer price;
    @Setter
    private String description;
    @Setter
    private Integer duration;

    @OneToMany(mappedBy = "productId", fetch = FetchType.LAZY)
    private List<PaymentModel> paymentIds;
}
