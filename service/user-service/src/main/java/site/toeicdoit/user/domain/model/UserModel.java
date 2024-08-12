package site.toeicdoit.user.domain.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
@Getter
@ToString(exclude = {"id"})
public class UserModel extends BaseModel{

    @Id
    @Column(name ="id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true, nullable = false)
    private String email;

    private String password;

    @Setter
    private String profile;
    @Setter
    private String name;

    private String phone;
    private String toeicLevel;
    private String registration;
    private String oauthId;

    // ====================== user ========================

    @OneToMany(mappedBy = "userId", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    private List<RoleModel> roleIds;

    @OneToMany(mappedBy = "userId", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    private List<BoardModel> boardIds;

    @OneToMany(mappedBy = "userId", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    private List<ReplyModel> replyIds;

    // ======================= tx =========================

    @OneToMany(mappedBy = "userId", fetch = FetchType.LAZY)
    private List<PaymentModel> paymentIds;

    @OneToMany(mappedBy = "userId", fetch = FetchType.LAZY)
    private List<SubscribeModel> subscribeIds;

    @OneToMany(mappedBy = "userId", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    private List<CalendarModel> calendarIds;

    @OneToMany(mappedBy = "userId", fetch = FetchType.LAZY)
    private List<ResultModel> resultIds;
    
}
