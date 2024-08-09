package site.toeicdoit.user.service;

public interface CommandService<T> {
    T save(T t);
    void deleteById(Long id);
}