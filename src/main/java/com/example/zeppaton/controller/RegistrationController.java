package com.example.zeppaton.controller;

import com.example.zeppaton.model.domain.User;
import com.example.zeppaton.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Map;

@Controller
public class RegistrationController {
    @Autowired
    private UserService userService;

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(User user, Map<String, Object> model) {


        if (!userService.addUser(user)) {
            model.put("message", "User exist");
            return "registration";
        }
        return "redirect:/login";
    }
}
