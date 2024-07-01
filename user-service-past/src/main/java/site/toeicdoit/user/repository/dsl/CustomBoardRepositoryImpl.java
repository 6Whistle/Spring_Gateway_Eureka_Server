package site.toeicdoit.user.repository.dsl;

import com.querydsl.jpa.impl.JPAQueryFactory;
import lombok.RequiredArgsConstructor;
import site.toeicdoit.user.domain.model.jpa.BoardModel;


@RequiredArgsConstructor
public class CustomBoardRepositoryImpl implements CustomBoardRepository {
    private final JPAQueryFactory queryFactory;
//    private final QArticleModel article = QArticleModel.articleModel;

    @Override
    public BoardModel findByTitle(String title) {
//        return queryFactory.selectFrom(article)
//                .where(article.title.eq(title))
//                .fetchFirst();
        return null;
    }
}
