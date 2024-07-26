package site.toeicdoit.tx.service;

import site.toeicdoit.tx.domain.vo.Messenger;

import java.util.List;
import java.util.Optional;

public interface QueryService <T>{
    List<T> findAll();
    Optional<T> findById(Long id);
    Messenger count();
    Boolean existsById(Long id);
}