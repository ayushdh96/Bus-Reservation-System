package com.lti.bus.controller;

import java.time.LocalDate;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
//http://localhost:8082/901_AirlinesProject
@Controller
@RequestMapping(value="/")
public class HomeController {
	
	@RequestMapping(value="/")
	public String showHomePage(Model model) {
		//return model and view
		model.addAttribute("msg", "Welcome to Spring MVC World");
		model.addAttribute("today",LocalDate.now());
		//model object associated with name 'msg'
		return "home";//view name which will be returned to dispacherServlet
	}
	@RequestMapping(value="/home")
	public String showHomePage1(Model model) {
		//return model and view
		model.addAttribute("msg", "Welcome to Spring MVC World");
		model.addAttribute("today",LocalDate.now());
		//model object associated with name 'msg'
		return "home";//view name which will be returned to dispacherServlet
	}
	@RequestMapping(value="/about")
	public ModelAndView showAboutPage() {
		ModelAndView mv = new ModelAndView();
		//return model and view
		mv.addObject("title", "Spring MVC AirlinesApplication- About Page");
		mv.setViewName( "aboutPage");
		return mv;//view name which will be returned to dispacherServlet
	}
	
}










