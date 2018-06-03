package ru.kpfu.itis.service;

import org.springframework.stereotype.Service;
import ru.kpfu.itis.model.User;

@Service
public interface UserService {

    void saveUser(User user);
}
