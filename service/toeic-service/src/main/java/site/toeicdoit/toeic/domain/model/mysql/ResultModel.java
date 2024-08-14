package site.toeicdoit.toeic.domain.model.mysql;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
@Getter
@Setter
@Entity
@ToString(exclude = {"id"})
public class ResultModel extends BaseModel {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String userAnswer;
    private boolean isCorrect; //정답유무
    private String timeElapsed; //풀이시간
    private String score; //점수
    private String lcScore; //lc점수
    private String rcScore; //rc점수
    private String scorePart1; //part1점수
    private String scorePart2; //part2점수
    private String scorePart3; //part3점수
    private String scorePart4; //part4점수
    private String scorePart5; //part5점수
    private String scorePart6; //part6점수
    private String scorePart7; //part7점수


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    private ToeicCategoryModel toeicCategoryId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private UserModel userId;


}