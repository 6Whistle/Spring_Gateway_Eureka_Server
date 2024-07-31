package site.toeicdoit.user.domain.model.mysql;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
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
public class ToeicCategoryModel extends BaseModel {

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title; //기출제목
    private String sound; //기출음성
    private String script; //Lc 스크립트 URL\
    private String testType; //기출 유형

    @OneToMany(mappedBy = "toeicCategoryId", fetch = FetchType.LAZY)
    private List<ToeicModel> toeicIds;

    @OneToOne(mappedBy = "toeicCategoryId", fetch = FetchType.LAZY)
    private ResultModel resultId;
}