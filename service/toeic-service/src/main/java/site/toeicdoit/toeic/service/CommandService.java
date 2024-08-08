package site.toeicdoit.toeic.service;


import site.toeicdoit.toeic.domain.vo.Messenger;

public interface CommandService<T> {
    Messenger save(T t);
    Messenger deleteById(Long id);
    Messenger modify(T t);
}