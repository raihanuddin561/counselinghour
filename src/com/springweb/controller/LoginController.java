package com.springweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping(value = "/login")
	public String showLoginPage() {
		return "login";
	}
	
	@RequestMapping(value = "/logout")
	public String showLogoutPage() {
		return "redirect:home";
	}
}
