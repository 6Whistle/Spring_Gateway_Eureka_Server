package site.toeicdoit.user.domain.model.mysql;


import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
@Getter
@ToString(exclude = {"id"})
public class ReplyModel extends BaseModel {

    @Id
    @Column(name ="id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String content;

    // 대댓글 관련
    private Boolean isDeleted;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "parent_id")
    private ReplyModel parent;

    @OneToMany(mappedBy = "parent", orphanRemoval = true)
    private List<ReplyModel> children;

    public ReplyModel(String content) {
        this.content = content;
    }

    public void updateUserId(UserModel userId) {
        this.userId = userId;
    }

    public void updateBoard(BoardModel boardId) {
        this.boardId = boardId;
    }

    public void updateParent(ReplyModel ReplyModel) {
        this.parent = ReplyModel;
    }

    public void changeIsDeleted(Boolean isDeleted) {
        this.isDeleted = isDeleted;
    }




    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private UserModel userId;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "board_id")
    private BoardModel boardId;

}
