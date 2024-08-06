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
import site.toeicdoit.user.domain.model.mysql.BoardModel;
import site.toeicdoit.user.domain.model.mysql.QBoardModel;
import site.toeicdoit.user.domain.vo.MessageStatus;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.repository.mysql.BoardRepository;
import site.toeicdoit.user.service.BoardService;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {

    private final JPAQueryFactory queryFactory;
    private final BoardRepository boardRepository;
    private final QBoardModel qBoard = QBoardModel.boardModel;

    @Transactional
    @Override
    public Messenger save(BoardDto dto) {
        log.info(">>> Board Service Save 진입: {}", dto);
        BoardModel result = boardRepository.save(dtoToEntity(dto));
        log.info(">>> Board Service Save result : {}", result);
        return Messenger.builder()
                .message(MessageStatus.SUCCESS.name())
                .build();
    }

    @Override
    public Messenger deleteById(Long id) {
        log.info(">>> Board Service Delete 진입: {}", id);
        if (boardRepository.existsById(id)) {
            boardRepository.deleteById(id);
            return Messenger.builder().message("SUCCESS").build();
        } else {
            return Messenger.builder().message("FAILURE").build();
        }
    }

    @Override
    public List<BoardDto> findAll() {
        return boardRepository.findAll().stream().map(this::entityToDto).toList();
    }

    @Override
    public Optional<BoardDto> findById(Long id) {
        log.info(">>> Board Service findById 진입: {}", id);
        return boardRepository.findById(id).map(this::entityToDto);
    }

    @Override
    public Boolean existById(Long id) {
        return boardRepository.existsById(id);
    }

    @Override
    public Boolean existByEmail(String email) {
        return queryFactory.selectFrom(qBoard)
                .where(qBoard.userId.email.eq(email))
                .fetchAll() != null;
    }

    @Transactional
    @Override
    public Messenger modify(BoardDto dto) {
        log.info(">>> Board Service Modify 진입: {}", dto);
        Long result = queryFactory.update(qBoard)
                .set(qBoard.title, dto.getTitle())
                .set(qBoard.content, dto.getContent())
                .set(qBoard.category, dto.getCategory())
                .where(qBoard.id.eq(dto.getId()))
                .execute();
        log.info(">>> Board modify 결과(Query DSL): {}", result);
        return Messenger.builder()
                .message(MessageStatus.SUCCESS.name())
                .build();
    }

    @Override
    public Messenger countAll() {
        return Messenger.builder().count(boardRepository.count()).build();
    }

    @Override
    @Transactional
    public Page<BoardDto> findBy(String title, String type, String category, Long userId, Pageable pageable){
        log.info("findByTest impl 진입 : {}, {}, {}, {}", title, type, category, userId);
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
