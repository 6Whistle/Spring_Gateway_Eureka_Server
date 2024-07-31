package site.toeicdoit.user.domain.model.mysql;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
@Getter
@Entity
@ToString(exclude = {"id"})
public class ResultModel extends BaseModel {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String userAnswer;
    private boolean isCorrect; //정답유무
    private String timeElasped; //풀이시간
    private String score; //점수
    private String lcScore; //lc점수
    private String rcScore; //rc점수


    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    private ToeicCategoryModel toeicCategoryId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "parent_id")
    private ResultModel parentId;

    @OneToMany(mappedBy = "parentId", orphanRemoval = true)
    private List<ResultModel> childrenIds;

}