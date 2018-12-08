package com.springweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spirngweb.model.TeacherCounseling;
import com.springweb.dao.TeacherCounselingDao;
import com.springweb.service.TeacherServiceImpl;

@Controller
public class AppController {
	@Autowired
	private TeacherServiceImpl teacherServiceImpl;

	// student show counseling list
	@RequestMapping(value = "/counselingsearch", method = RequestMethod.GET)
	public String Studentlist(Model model) {
		boolean hasList = false;
		model.addAttribute("hasList",hasList);
		return "searchingcounselinglist";
	}

	// student also show specific teacher counseling
	@RequestMapping(value = "/counselinglist", method = RequestMethod.POST)
	public String showslist(Model model, String t_initial_id) {
		List<TeacherCounseling> getstudentlist = teacherServiceImpl.counsilinglist(t_initial_id);
		model.addAttribute("list", getstudentlist);
		boolean hasList = true;
		model.addAttribute("hasList",hasList);
		return "searchingcounselinglist";
	}

//display initializing form to initialize teacher
	@RequestMapping(value = "/admininitializeteacher", method = RequestMethod.GET)
	public String Createcounselingform(Model model) {
		model.addAttribute("counselingform", new TeacherCounseling());

		return "admininitializeteacher";
	}

//after initialize teacher this is show success or if information is wrong display error
	@RequestMapping(value = "/itializesuccess", method = RequestMethod.POST)
	public String Createtecounseling(@ModelAttribute("counselingform") TeacherCounseling teacherCounseling,
			BindingResult result) {
		if (result.hasErrors()) {
			return "admininitializeteacher";
		}
		teacherServiceImpl.addCounseling(teacherCounseling);
		return "success";
	}

// display update form
	@RequestMapping(value = "/updatecounseling")
	public String update(Model model) {
		model.addAttribute("teacher",new TeacherCounseling());
		
		return "updatecounseling";
	}
	
	
	@RequestMapping(value = "/updatecounselingtable")
	public String update(@RequestParam("day") String day,@RequestParam("tid") String tid,  Model model) {
		TeacherCounseling counseling = teacherServiceImpl.getCounseling(day,tid);
		System.out.println(counseling);
		model.addAttribute("teacher",counseling);
		return "updatecounseling";
	}

// update information and show success
	@RequestMapping(value = "/success", method = RequestMethod.POST)
	public String Updateecounseling(@ModelAttribute("teacher") TeacherCounseling teacherCounseling,BindingResult result) {
		if (result.hasErrors()) {
			return "updatecounseling";
		}
		teacherServiceImpl.updateCounseling(teacherCounseling);
		return "success";
	}
}
