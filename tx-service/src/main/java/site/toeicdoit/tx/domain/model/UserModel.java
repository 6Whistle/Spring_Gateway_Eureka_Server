package site.toeicdoit.tx.domain.model;


import lombok.*;
import jakarta.persistence.*;
import site.toeicdoit.tx.enums.Registration;

import java.util.List;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
@Getter
@Entity
@ToString(exclude = {"id"})
public class UserModel extends BaseModel {
    @Id
    @Column(name ="id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true, nullable = false)
    private String email;

    private String password;
    private String profile;
    private String name;
    private String phone;
    private Integer toeicLevel;
    private String registration;


    // ====================== user ========================

    @Setter
    @OneToMany(mappedBy = "userId", fetch = FetchType.LAZY)
    private List<RoleModel> roleModels;

    @OneToMany(mappedBy = "userId", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    private List<BoardModel> boardModels;

    @OneToMany(mappedBy = "userId", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    private List<ReplyModel> replyModels;

    // ======================= tx =========================

    @OneToMany(mappedBy = "userId", fetch = FetchType.LAZY)
    private List<PaymentModel> paymentIds;

    @OneToMany(mappedBy = "userId", fetch = FetchType.LAZY)
    private List<SubscribeModel> subscribeIds;

    @OneToOne(mappedBy = "userId", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    private CalendarModel calenderId;


}
