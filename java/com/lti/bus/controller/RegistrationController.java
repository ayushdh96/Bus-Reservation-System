package com.lti.bus.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.BusLogin;
import com.lti.bus.model.BusRegistration;
import com.lti.bus.model.PassengerDetails;
import com.lti.bus.service.IBusRegistrationService;

@Controller
@RequestMapping(value = "/registration")
public class RegistrationController {

	@Autowired
	private IBusRegistrationService busRegistrationService;
	
	@RequestMapping(value = "/showRegistration", 
			method = RequestMethod.GET)
	public String getBusRegistrationPage(Model model) throws BusException {
		model.addAttribute("busRegistration", new BusRegistration());
		List<BusRegistration> registerList=
				busRegistrationService.getRegistrationList();
		
		registerList.forEach((data)->System.out.println(data)); 
		model.addAttribute("registerList",registerList);
		System.out.println("Controller layer 1");
		return "registrationForm";
	}
	@RequestMapping(value = "/saveBusRegistration", method = RequestMethod.POST)
	public String saveUserAction(@ModelAttribute ("busRegistration")@Valid BusRegistration busRegistration, 
			BindingResult bindingResult, Model model) throws BusException {
	if (bindingResult.hasErrors()) {
			System.out.println("Controller layer if case");
			return "registrationForm";
		}
		if(busRegistration.getRegistrationId()==null){
			//new customer, add it
			busRegistration=this.busRegistrationService.addUser(busRegistration);
			System.out.println("Controller layer adduser");
		}
		model.addAttribute("busRegistration", busRegistration);	
		System.out.println("Controller layer 2");
		return "redirect:/login/showLogin";
	}
	
	@RequestMapping(value = "/fetch")
	public String showHomePage(Model model) {
		// return model and view

		
		model.addAttribute("msg", "Enter Username");
		model.addAttribute("busRegistration", new BusRegistration());
		// model object associated with name 'msg'
		return "securityQuestionPage";// view name which will be returned to dispacherServlet
	}
	
	
	
	@RequestMapping(value = "/checkSecurityQuestion", method = RequestMethod.POST)
	public String matchQA(@ModelAttribute("busRegistration") @Valid BusRegistration busRegistration,
			BindingResult bindingResult, Model model,HttpSession session) throws BusException {

		/*if (bindingResult.hasErrors()) {			
			return "login";
		}*/
	
		BusRegistration busRegistration1 = this.busRegistrationService.fetchQuestion(busRegistration);
		System.out.println("checkSecurity question At Service:  " + busRegistration1);

		model.addAttribute("busRegistration1", busRegistration1);
		session.setAttribute("busRegistration1", busRegistration1);
		
		if (busRegistration1 == null)
		{
			model.addAttribute("busRegistration", new BusRegistration());
			model.addAttribute("msg", "Invalid credentials");
			return "securityQuestionPage";
		} else {			
			return "updatePassword";
		}
	}
	@RequestMapping(value = "/updatePassword", method = RequestMethod.POST)
	public String updatePass(@ModelAttribute("busRegistration1") @Valid BusRegistration busRegistration1,
		BindingResult bindingResult, Model model,HttpSession session) throws  BusException{
		/*if (bindingResult.hasErrors()) {
			BusRegistration busRegistration = (BusRegistration) session.getAttribute("busRegistration1");
			model.addAttribute("busRegistration1", busRegistration);
			System.err.println("in errror page"+busRegistration);
			return "updatePassword";
		}*/
		System.out.println(" busRegistration1 at updatePass at controller...."+busRegistration1);
		BusRegistration busRegistration = (BusRegistration) session.getAttribute("busRegistration1");
		busRegistration.setPassword(busRegistration1.getUserName());
		busRegistration.setPassword(busRegistration1.getPassword());
		BusRegistration busRegistration2=busRegistrationService.updatePassword(busRegistration);
		model.addAttribute("busLogin",new BusLogin());
		model.addAttribute("busRegistration1",busRegistration);
		System.out.println("Update bus Regitration after merge at controller  : "+busRegistration2);
		return "login";
		}
}
