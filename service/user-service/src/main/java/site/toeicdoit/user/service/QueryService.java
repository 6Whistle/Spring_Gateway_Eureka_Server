package site.toeicdoit.user.service;

import java.util.List;

public interface QueryService<T> {
    List<T> findAll();
    T findById(Long id);
    Boolean existById(Long id);
}
