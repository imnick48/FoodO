package com.example.food.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String index() {
	    return "index";
	}

	@RequestMapping("/login")
	public String login() {
	    return "login";
	}
	@RequestMapping("/signup")
	public String signup() {
	    return "signup";
	}
}
