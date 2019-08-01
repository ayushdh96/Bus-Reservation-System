package com.lti.bus.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.Feedback;
import com.lti.bus.service.IFeedbackService;

@Controller
@RequestMapping(value="/feedback")
public class FeedbackController {

	@Autowired
	IFeedbackService feedbackservice;
	@RequestMapping(value="/providevalue")
	public String showFeedbackPage(Model model) throws BusException
	{
		model.addAttribute("feedbackmsg", "Feedback Form");
		model.addAttribute("feedback",new Feedback());
		return"feedbackPage";
	}
	
	@RequestMapping(value = "/savefeedbackresult", method = RequestMethod.POST)
	public String saveUserAction(@ModelAttribute ("feedback")@Valid Feedback feedback, 
			BindingResult bindingResult, Model model) throws BusException
	{   if (bindingResult.hasErrors()) {
		System.out.println("Controller layer if case");
		return "feedbackPage";
	}else {
	
		feedback=this.feedbackservice.addFeedback(feedback);
		model.addAttribute("feedback", feedback);
		return "thanks";
	}
	}
	
}
