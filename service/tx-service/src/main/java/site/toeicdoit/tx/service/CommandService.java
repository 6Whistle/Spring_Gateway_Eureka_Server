package site.toeicdoit.tx.service;


import site.toeicdoit.tx.domain.vo.Messenger;

public interface CommandService<T> {
    Messenger save(T t);
    Messenger deleteById(Long id);
    Messenger modify(T t);
}
