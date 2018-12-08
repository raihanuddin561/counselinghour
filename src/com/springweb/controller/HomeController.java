package com.springweb.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spirngweb.model.User;
import com.springweb.dao.Message;
import com.springweb.service.UserServiceImpl;

@Controller
public class HomeController {
	@Autowired
	private UserServiceImpl service;
	@RequestMapping(value = "/")
	public String showOffer(Model model) {
		model.addAttribute("hello", "Wellcome to spring mvc");
		return "home";
	}
	@RequestMapping(value="/errorpage")
	public String errorPage() {
		return "error";
	}
	@RequestMapping(value="/contactlist")
	public String contactPage(Model model) {
		List<User>usercontact=service.getContactlist();
		model.addAttribute("contactlist",usercontact);
		
		return "contactlist";
	}
	@RequestMapping(value="/seemessage")
	public String seeMessage(Model model,Principal principal) {
		String username = principal.getName();
		List<Message>message=service.getMessage(username);
		model.addAttribute("messages",message);
		
		return "seemessage";
	}
	
}
