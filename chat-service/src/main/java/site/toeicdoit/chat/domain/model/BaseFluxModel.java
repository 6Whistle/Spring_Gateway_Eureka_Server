package site.toeicdoit.chat.domain.model;

import java.time.LocalDateTime;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import lombok.Getter;

/**
 * BaseFluxModel
 * <p>Flux Model의 기본이 되는 Model</p>
 * @since 2024-07-22
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 */
@Getter
public abstract class BaseFluxModel {
    @CreatedDate
    private LocalDateTime createdAt;
    @LastModifiedDate
    private LocalDateTime updatedAt;
}
