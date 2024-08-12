package site.toeicdoit.user.domain.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
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
    private String part;
    private String question;
    private String answer;
    private String description;
    private String image;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "toeicCategory_id")
    @JsonBackReference
    private ToeicCategoryModel toeicCategoryId;

    @OneToOne(mappedBy = "toeicId", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    private OptionModel optionId;
}