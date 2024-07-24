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
    private String question;
    private String answer;
    private String description;
    private String image; //문제 이미지
    private String sound; // 음원
    private String script; // 정답 음원
    private String title; // 기출제목
    private boolean take; // 사용자가 풀었는지 여부

    @OneToMany(mappedBy = "toeicId", fetch = FetchType.LAZY)
    private List<ResultModel> resultIds;

    @OneToOne(mappedBy = "toeicId", fetch = FetchType.LAZY)
    private OptionModel optionId;
}