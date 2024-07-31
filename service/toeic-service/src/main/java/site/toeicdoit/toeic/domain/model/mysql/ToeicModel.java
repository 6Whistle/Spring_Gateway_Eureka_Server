package site.toeicdoit.toeic.domain.model.mysql;

import java.util.List;

import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

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