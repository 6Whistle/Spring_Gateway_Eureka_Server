package site.toeicdoit.user.repository.dsl;

import site.toeicdoit.user.domain.model.jpa.BoardModel;

public interface CustomBoardRepository {

    BoardModel findByTitle(String title);

}
