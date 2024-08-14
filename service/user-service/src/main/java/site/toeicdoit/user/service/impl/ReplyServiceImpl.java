package site.toeicdoit.user.service.impl;

import com.querydsl.jpa.impl.JPAQueryFactory;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.toeicdoit.user.domain.dto.ReplyDto;
import site.toeicdoit.user.domain.model.QReplyModel;
import site.toeicdoit.user.domain.vo.ExceptionStatus;
import site.toeicdoit.user.exception.UserException;
import site.toeicdoit.user.repository.BoardRepository;
import site.toeicdoit.user.repository.ReplyRepository;
import site.toeicdoit.user.repository.UserRepository;
import site.toeicdoit.user.service.ReplyService;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ReplyServiceImpl implements ReplyService {
    private final ReplyRepository replyRepository;
    private final UserRepository userRepository;
    private final BoardRepository boardRepository;
    private final JPAQueryFactory queryFactory;
    private final QReplyModel qReply = QReplyModel.replyModel;

    @Override
    public ReplyDto save(ReplyDto replyDto) {
        if (!replyDto.getContent().isEmpty()) {
            Long id = replyRepository.save(dtoToEntity(replyDto)).getId();
            return findById(id);
        } else {
            throw new UserException(ExceptionStatus.INVALID_INPUT, "댓글 내용을 작성해주세요.");
        }
    }

    @Override
    public void deleteById(Long id) {
        if (existById(id)) {
            replyRepository.deleteById(id);
        } else {
            throw new UserException(ExceptionStatus.NOT_FOUND, "id not found");
        }
    }

    @Override
    @Transactional
    public ReplyDto modifyByContent(ReplyDto replyDto) {
        if (existById(replyDto.getId())) {
             long result = queryFactory.update(qReply)
                    .set(qReply.content, replyDto.getContent())
                    .where(qReply.id.eq(replyDto.getId()))
                    .execute();
             if(result == 1) {
                 return findById(replyDto.getId());
             } else {
                 throw new UserException(ExceptionStatus.BAD_REQUEST, "reply modify fail");
             }
        } else {
            throw new UserException(ExceptionStatus.NOT_FOUND, "id not found");
        }
    }

    @Override
    public List<ReplyDto> findAllByBoardId(Long boardId) {
        if (boardRepository.existsById(boardId)) {
            return queryFactory.selectFrom(qReply)
                    .where(qReply.boardId.id.eq(boardId))
                    .orderBy(qReply.id.desc())
                    .fetch().stream().map(this::entityToDto).toList();
        } else {
            throw new UserException(ExceptionStatus.NOT_FOUND, "boardId not found");
        }
    }

    @Override
    public List<ReplyDto> findAllByUserId(Long userId) {
        if (userRepository.existsById(userId)) {
            return queryFactory.selectFrom(qReply)
                    .where(qReply.userId.id.eq(userId))
                    .orderBy(qReply.id.desc())
                    .fetch().stream().map(this::entityToDto).toList();
        } else {
            throw new UserException(ExceptionStatus.NOT_FOUND, "userId not found");
        }
    }

    @Override
    public List<ReplyDto> findAll() {
        return replyRepository.findAll().stream().map(this::entityToDto).toList();
    }

    @Override
    public ReplyDto findById(Long id) {
        return replyRepository.findById(id).map(this::entityToDto)
                .orElseThrow(() -> new UserException(ExceptionStatus.NOT_FOUND, "id not found"));
    }

    @Override
    public Boolean existById(Long id) {
        return replyRepository.existsById(id);
    }
}
