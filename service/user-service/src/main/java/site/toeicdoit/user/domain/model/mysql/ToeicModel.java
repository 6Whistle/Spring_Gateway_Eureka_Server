package site.toeicdoit.user.domain.model.mysql;

import jakarta.persistence.*;
import lombok.*;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
@Getter
@Entity
@ToString(exclude = {"id"})
public class ToeicModel extends BaseModel {

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long level;
    private String part; // 문제 유형
    private String question;
    private String answer;
    private String description;
    private String image; //문제 이미지
    private boolean take; // 사용자가 풀었는지 여부


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "toeicCategory_id")
    private ToeicCategoryModel toeicCategoryId;

    @OneToOne(mappedBy = "toeicId", fetch = FetchType.LAZY)
    private OptionModel optionId;
}