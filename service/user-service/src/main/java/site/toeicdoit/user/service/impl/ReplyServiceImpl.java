package site.toeicdoit.user.service.impl;

import com.querydsl.jpa.impl.JPAQueryFactory;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.toeicdoit.user.domain.dto.ReplyDto;
import site.toeicdoit.user.domain.model.mysql.QReplyModel;
import site.toeicdoit.user.domain.model.mysql.ReplyModel;
import site.toeicdoit.user.domain.vo.MessageStatus;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.handler.AlreadyExistElementException;
import site.toeicdoit.user.repository.mysql.BoardRepository;
import site.toeicdoit.user.repository.mysql.ReplyRepository;
import site.toeicdoit.user.repository.mysql.UserRepository;
import site.toeicdoit.user.service.ReplyService;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ReplyServiceImpl implements ReplyService {
    private final ReplyRepository replyRepository;
    private final BoardRepository boardRepository;
    private final UserRepository userRepository;
    private final JPAQueryFactory queryFactory;
    private final QReplyModel qReply = QReplyModel.replyModel;

    @Override
    public Messenger save(ReplyDto replyDto) {
        if (replyDto != null) {
            ReplyModel reply = replyRepository.save(dtoToEntity(replyDto));
            return Messenger.builder()
                    .message(MessageStatus.SUCCESS.name())
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
        if (id != null && replyRepository.existsById(id)) {
            replyRepository.deleteById(id);
            return Messenger.builder()
                    .message(MessageStatus.SUCCESS.name())
                    .build();
        } else {
            return Messenger.builder()
                    .message("존재하는 댓글이 없습니다.")
                    .build();
        }
    }

    @Override
    @Transactional
    public Messenger modify(ReplyDto replyDto) {
        if (replyDto != null && replyRepository.existsById(replyDto.getId())) {
             Long modReply = queryFactory.update(qReply)
                    .set(qReply.content, replyDto.getContent())
                    .where(qReply.id.eq(replyDto.getId()))
                    .execute();
            return Messenger.builder()
                    .message(MessageStatus.SUCCESS.name())
                    .data(replyRepository.findById(modReply))
                    .build();
        } else if (!replyRepository.existsById(replyDto.getId())) {
            return Messenger.builder()
                    .message("존재하는 댓글이 없습니다.")
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
        if (boardId != null && boardRepository.existsById(boardId)) {
            return queryFactory.selectFrom(qReply)
                    .where(qReply.boardId.id.eq(boardId))
                    .orderBy(qReply.id.asc())
                    .fetch().stream().map(this::entityToDto).toList();
        } else if (!boardRepository.existsById(boardId)) {
            throw new AlreadyExistElementException("존재하는 게시물이 없습니다.");
        } else {
            throw new AlreadyExistElementException("작성된 내용이 없습니다.");
        }
    }

    @Override
    public List<ReplyDto> findAllByUserId(Long userId) {
        if (userId != null && userRepository.existsById(userId)) {
            return queryFactory.selectFrom(qReply)
                    .where(qReply.userId.id.eq(userId))
                    .orderBy(qReply.id.asc())
                    .fetch().stream().map(this::entityToDto).toList();
        } else if (!userRepository.existsById(userId)) {
            throw new AlreadyExistElementException("존재하는 게시물이 없습니다.");
        } else {
            throw new AlreadyExistElementException("작성된 내용이 없습니다.");
        }
    }
}
