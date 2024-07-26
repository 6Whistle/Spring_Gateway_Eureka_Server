package site.toeicdoit.chat.domain.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * ChatFluxModel
 * <p>Chat Flux Model</p>
 * <p>Chat Data Model for MongoDB</p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see BaseFluxModel
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Document
public class ChatFluxModel extends BaseFluxModel{
    @Id
    private String id;
    private String roomId;
    private String senderId;
    private String senderName;
    private String message;
}
