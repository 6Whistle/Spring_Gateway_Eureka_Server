package site.toeicdoit.user.service.impl;

import com.querydsl.jpa.impl.JPAQueryFactory;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.toeicdoit.user.domain.dto.ReplyDto;
import site.toeicdoit.user.domain.model.mysql.QReplyModel;
import site.toeicdoit.user.domain.model.mysql.ReplyModel;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.repository.mysql.ReplyRepository;
import site.toeicdoit.user.service.ReplyService;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ReplyServiceImpl implements ReplyService {
    private final ReplyRepository replyRepository;
    private final JPAQueryFactory queryFactory;
    private final QReplyModel qReply = QReplyModel.replyModel;

    @Override
    public Messenger save(ReplyDto replyDto) {
        if(replyDto.getContent() != null){
            ReplyModel reply = replyRepository.save(dtoToEntity(replyDto));
            return Messenger.builder()
                    .message("작성이 완료되었습니다.")
                    .data(entityToDto(reply))
                    .build();
        } else {
            return Messenger.builder()
                    .message("저장에 실패했습니다.")
                    .build();
        }
    }

    @Override
    public Messenger deleteById(Long id) {
        if(id != null && replyRepository.existsById(id)){
            replyRepository.deleteById(id);
            return Messenger.builder()
                    .message("삭제가 완료되었습니다.")
                    .build();
        } else {
            return Messenger.builder()
                    .message("삭제할 댓글이 없습니다.")
                    .build();
        }
    }

    @Override
    @Transactional
    public Messenger modify(ReplyDto replyDto) {
        if(replyDto != null){
            queryFactory.update(qReply)
                    .set(qReply.content, replyDto.getContent())
                    .where(qReply.id.eq(replyDto.getId())).execute();
            return Messenger.builder()
                    .message("수정이 완료되었습니다.")
                    .build();
        } else {
            return Messenger.builder()
                    .message("작성된 내용이 없습니다.")
                    .build();
        }
    }

    @Override
    public Messenger countAll() {
        return null;
    }

    @Override
    public List<ReplyDto> findAllByBoardId(Long boardId) {
        if(boardId != null && replyRepository.existsById(boardId)){
            return queryFactory.selectFrom(qReply)
                    .where(qReply.boardId.id.eq(boardId))
                    .orderBy(qReply.id.asc())
                    .fetch().stream().map(this::entityToDto).toList();
        } else {
            return null;
        }
    }
}
