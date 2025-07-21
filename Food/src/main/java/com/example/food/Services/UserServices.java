package com.example.food.Services;

import com.example.food.model.User;
import com.example.food.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
@Service
public class UserServices {

    private final UserRepository userRepository;
    @Autowired
    public UserServices(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
    public User createUser(User user) {
        if (userRepository.existsByEmail(user.getEmail())) {
            throw new IllegalArgumentException("Email '" + user.getEmail() + "' is already registered.");
        }
        return userRepository.save(user);
    }
    public Optional<User> getUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }
    public Optional<User> getUserById(Integer id) {
        return userRepository.findById(id);
    }
}
