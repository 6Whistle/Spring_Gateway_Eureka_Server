package site.toeicdoit.user.service;

import site.toeicdoit.user.domain.vo.Messenger;

public interface CommandService<T> {
    Messenger save(T t);
    Messenger deleteById(Long id);
    Messenger modify(T t);
    Messenger countAll();
}