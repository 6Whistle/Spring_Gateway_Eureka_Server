package site.toeicdoit.user.domain.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.*;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
@Getter
@Entity
@ToString(exclude = {"id"})
public class OptionModel extends BaseModel {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String choice1;
    private String choice2;
    private String choice3;
    private String choice4;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "toeic_id")
    @JsonBackReference
    private ToeicModel toeicId;

}