package com.springweb.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spirngweb.model.User;
import com.springweb.service.UserServiceImpl;

@Controller
public class UserController {
	@Autowired
	private UserServiceImpl service;

// view admin page
	@RequestMapping(value = "/admin")
	public String admin() {
		return "admin";
	}
	
	// admin view all kinds of user .
	@RequestMapping(value = "/userlist")
	public String showuserlist(Model model) {
		List<User>users=service.getusers();
		model.addAttribute("userlist",users);
		return "adminViewUserList";
	}
	
	//display add new user page
	@RequestMapping(value = "/addnewuser",method=RequestMethod.GET)
public String createaccountFrom(Model model) {
		model.addAttribute("userfrom", new User());
	return "addNewUser";
}
	//admin add new user like teacher or student
	@RequestMapping(value = "/addnewuser",method=RequestMethod.POST)
	public String createaccount(@Valid @ModelAttribute("userfrom")User user,BindingResult result) {
			if(result.hasErrors()) {
				return "addNewUser";
			}
			user.setEnabled(true);
			try {
			service.Insert(user);
			}catch(DuplicateKeyException e) {
				result.rejectValue("email","duplicate","This email already exits");
				return "addNewUser";
			}
		return "success";
	}
}
