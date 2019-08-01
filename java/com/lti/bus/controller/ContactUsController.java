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
import com.lti.bus.model.ContactUs;
import com.lti.bus.service.IContactUsService;

@Controller
@RequestMapping(value = "/contactUs")
public class ContactUsController {
	
	@Autowired
	IContactUsService contactUsService;
	
	@RequestMapping(value = "/contactPage")
	public String getContactUsPage(Model model) throws BusException {
		model.addAttribute("contactUs", new ContactUs());
		System.out.println("Contact Us at Controller Layer");
		return "contactUsPage";
	}
	
	@RequestMapping(value = "/saveDetails", method = RequestMethod.POST)
	public String saveContactDetails(@Valid @ModelAttribute("contactUs") ContactUs contactUs,
			BindingResult bindingResult, Model model) throws BusException {
		if(bindingResult.hasErrors()) {
			System.out.println("Contact Us Controller If case");
			return "contactUsPage";
		}
		contactUs=this.contactUsService.saveDetails(contactUs);
		model.addAttribute("contactUs", contactUs);
		return "thankscu";
	}
}
