package com.example.food.Controller;

import com.example.food.Services.UserServices;
import com.example.food.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import jakarta.servlet.http.HttpServletRequest;

import java.util.Optional;

@Controller
@RequestMapping("/users")
public class UserController {

    private final UserServices userServices;

    @Autowired
    public UserController(UserServices userServices) {
        this.userServices = userServices;
    }

    //  Handle Form Submission from signup.jsp
    @PostMapping("/register")
    public String handleFormSubmission(HttpServletRequest request) {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User();
        user.setEmail(email);
        user.setPassword(password);

        try {
            userServices.createUser(user);
            return "redirect:/login";
        } catch (IllegalArgumentException e) {
            request.setAttribute("error", "Email already exists.");
            return "signup"; // if JSP is at /WEB-INF/jsp/signup.jsp
        } catch (Exception e) {
            request.setAttribute("error", "Something went wrong.");
            return "signup";
        }
    }

    // API
    @PostMapping("/api")
    public ResponseEntity<User> createUserViaApi(@RequestBody User user) {
        try {
            User createdUser = userServices.createUser(user);
            return new ResponseEntity<>(createdUser, HttpStatus.CREATED);
        } catch (IllegalArgumentException e) {
            return new ResponseEntity<>(null, HttpStatus.CONFLICT);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // Get user by email via API
    @GetMapping("/api/by-email")
    public ResponseEntity<User> getUserByEmail(@RequestParam String email) {
        Optional<User> user = userServices.getUserByEmail(email);
        return user.map(value -> new ResponseEntity<>(value, HttpStatus.OK))
                   .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    // Get user by ID via API
    @GetMapping("/api/{id}")
    public ResponseEntity<User> getUserById(@PathVariable Integer id) {
        Optional<User> user = userServices.getUserById(id);
        return user.map(value -> new ResponseEntity<>(value, HttpStatus.OK))
                   .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }
}
	