package com.lti.bus.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.BusLogin;
import com.lti.bus.model.BusRegistration;
import com.lti.bus.model.PassengerDetails;
import com.lti.bus.service.IBusLoginService;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
	@Autowired
	private IBusLoginService busLoginService;

	@RequestMapping(value = "/showLogin")
	public String showHomePage(Model model) {
		// return model and view

		model.addAttribute("msg", "Login Page");
		model.addAttribute("busLogin", new BusLogin());
		// model object associated with name 'msg'
		return "login";// view name which will be returned to dispacherServlet
	}

	@RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
	public String saveUserAction(@ModelAttribute("busLogin") @Valid BusLogin busLogin,
			BindingResult bindingResult, Model model, HttpSession session) throws BusException {

		if (bindingResult.hasErrors()) {		
			model.addAttribute("msg","Invalid Credentials Kindly Re-Login");
			return "login";
		}
	
		BusLogin busLoginResult = this.busLoginService.checkLogin(busLogin);
		System.out.println("checkLogin At Service:  " + busLoginResult);
		session.setAttribute("loginSession", busLoginResult);
		PassengerDetails passengerDetails = (PassengerDetails) session.getAttribute("ticketGeneration");
		System.err.println("This is checking that session is alive in login for futher vaerification"+passengerDetails);
		model.addAttribute("busLogin", busLoginResult);
		if (busLoginResult == null)
		{
			System.out.println("1");
			model.addAttribute("busLogin", new BusLogin());
			model.addAttribute("msg", "Invalid Credentials Kindly Re-Login");
			return "login";
		} else {
			System.out.println("4");
			if(passengerDetails==null)
			{
				System.out.println("2");
				return "redirect:/dasboard/userDashboard";
			}
			else {
				System.out.println("3");
			return "payment2";
			}
		}
	}
}
