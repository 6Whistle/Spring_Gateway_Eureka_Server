package site.toeicdoit.user.service.impl;

import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.jpa.impl.JPAQuery;
import com.querydsl.jpa.impl.JPAQueryFactory;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.support.PageableExecutionUtils;
import org.springframework.stereotype.Service;
import site.toeicdoit.user.domain.dto.BoardDto;
import site.toeicdoit.user.domain.model.QBoardModel;
import site.toeicdoit.user.domain.vo.ExceptionStatus;
import site.toeicdoit.user.exception.UserException;
import site.toeicdoit.user.repository.BoardRepository;
import site.toeicdoit.user.service.BoardService;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {

    private final JPAQueryFactory queryFactory;
    private final BoardRepository boardRepository;
    private final QBoardModel qBoard = QBoardModel.boardModel;

    @Override
    @Transactional
    public BoardDto save(BoardDto dto) {
        if (!dto.getTitle().isEmpty() || !dto.getContent().isEmpty()) {
            Long id = boardRepository.save(dtoToEntity(dto)).getId();
            return findById(id);
        } else {
            throw new UserException(ExceptionStatus.INVALID_INPUT, "title, content 내용을 작성해주세요.");
        }
    }

    @Override
    public void deleteById(Long id) {
        if (existById(id)) {
            boardRepository.deleteById(id);
        } else {
            throw new UserException(ExceptionStatus.NOT_FOUND, "id not found");
        }
    }

    @Override
    public List<BoardDto> findAll() {
        return boardRepository.findAll().stream().map(this::entityToDto).toList();
    }

    @Override
    public BoardDto findById(Long id) {
        return boardRepository.findById(id).map(this::entityToDto)
                .orElseThrow(() -> new UserException(ExceptionStatus.NOT_FOUND, "id not found"));
    }

    @Override
    public Boolean existById(Long id) {
        return boardRepository.existsById(id);
    }

    @Override
    @Transactional
    public BoardDto modify(BoardDto dto) {
        if(dto.getId() != null && existById(dto.getId())){
            long result = queryFactory.update(qBoard)
                    .set(qBoard.title, dto.getTitle())
                    .set(qBoard.content, dto.getContent())
                    .set(qBoard.type, dto.getType())
                    .set(qBoard.category, dto.getCategory())
                    .where(qBoard.id.eq(dto.getId()))
                    .execute();
            if (result == 1) {
                return findById(dto.getId());
            } else {
                throw new UserException(ExceptionStatus.BAD_REQUEST, "board modify fail");
            }
        } else {
            throw new UserException(ExceptionStatus.NOT_FOUND, "id not found");
        }
    }


    @Override
    @Transactional
    public Page<BoardDto> findBy(String title, String type, String category, Long userId, Pageable pageable) {
        var board = queryFactory.selectFrom(qBoard)
                .where(eqTitle(title), eqType(type), eqCategory(category), eqUserId(userId))
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .orderBy(qBoard.id.desc())
                .fetch().stream().map(this::entityToDto).toList();
        JPAQuery<Long> countQuery = queryFactory.select(qBoard.count())
                .from(qBoard)
                .where(eqTitle(title), eqType(type), eqCategory(category), eqUserId(userId));
        return PageableExecutionUtils.getPage(board, pageable, countQuery::fetchOne);
    }


    private BooleanExpression eqTitle(String title) {
        if (title == null) {
            return null;
        }
        return qBoard.title.contains(title);
    }

    private BooleanExpression eqType(String type) {
        if (type == null) {
            return null;
        }
        return qBoard.type.eq(type);
    }

    private BooleanExpression eqCategory(String category) {
        if (category == null) {
            return null;
        }
        return qBoard.category.eq(category);
    }

    private BooleanExpression eqUserId(Long userId) {
        if (userId == null) {
            return null;
        }
        return qBoard.userId.id.eq(userId);
    }


}
