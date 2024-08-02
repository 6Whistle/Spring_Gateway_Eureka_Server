package site.toeicdoit.user.service;

import java.util.List;
import java.util.Optional;

public interface QueryService <T> {
    List<T> findAll();
    Optional<T> findById(Long id);
    Boolean existById(Long id);
    Boolean existByEmail(String email);
}
