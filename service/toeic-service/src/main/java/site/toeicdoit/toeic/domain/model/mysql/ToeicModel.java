package site.toeicdoit.toeic.domain.model.mysql;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import jakarta.persistence.*;
import lombok.*;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
@Getter
@Entity
@ToString(exclude = "id")
public class ToeicModel extends BaseModel {

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long level;
    private String part;
    private String question;
    private String answer;
    private String description;
    private String image;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "toeicCategory_id")
    private ToeicCategoryModel toeicCategoryId;

    @OneToOne(fetch = FetchType.LAZY, mappedBy = "toeicId", cascade = CascadeType.ALL, orphanRemoval = true)
    private OptionModel optionId;
}
