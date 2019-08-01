package com.lti.bus.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.BusLogin;
import com.lti.bus.model.BusRegistration;
import com.lti.bus.model.PassengerDetails;
import com.lti.bus.model.Ticket;
import com.lti.bus.service.IBusRegistrationService;
import com.lti.bus.service.ITicketService;


@Controller
@RequestMapping(value = "/dasboard")
public class TicketController {

	@Autowired
	private ITicketService ticketService;
	@Autowired
	private IBusRegistrationService busRegistrationService;
	@RequestMapping(value = "/printTicket")
	public String showTicket(Model model,HttpSession session) throws BusException
	{
		Ticket ticket = (Ticket) session.getAttribute("ticket1");
	
		System.err.println("TicketGeneration in ctroller layer"+ticket);
		Ticket ticket2=ticketService.addTicket(ticket);
		return"userDashboard";	
	}
	@RequestMapping(value = "/showTicket", 
			method = RequestMethod.GET)
	public String getTicketDetails(Model model,HttpSession session) throws BusException {
		System.err.println("Controller layer at ticket controller");
		/*Ticket ticket1 = (Ticket) session.getAttribute("ticket1");*/
		BusLogin busLogin=(BusLogin) session.getAttribute("loginSession");
		System.err.println(busLogin);
		model.addAttribute("busRegistration", new BusRegistration());
		List<Ticket> ticketList=ticketService.getTicketList(busLogin);
		
		ticketList.forEach((data)->System.err.println(data)); 
		model.addAttribute("ticketList",ticketList);
		
		return "showTicket";
	}
	
	@RequestMapping(value = "/showProfile", 
			method = RequestMethod.GET)
	public String getProfileDetails(Model model,HttpSession session) throws BusException {
		System.err.println("Controller layer at Profile Controller");
		BusLogin busLogin  =  (BusLogin) session.getAttribute("loginSession");
		System.err.println(busLogin);
		model.addAttribute("busRegistration", new BusRegistration());
		List<BusRegistration> profileList=busRegistrationService.getProfileList(busLogin);
		
		profileList.forEach((data)->System.err.println(data)); 
		model.addAttribute("profileList",profileList);
		
		return "showProfile";
	}
	@RequestMapping(value = "/userDashboard")
	public String getProfileDetails(Model model) throws BusException
	{
		return "userDashboard";
	}
	@RequestMapping(value = "/logout")
	public String logoutUser(Model model,HttpSession session) throws BusException
	{
		session.removeAttribute("loginSession");
		session.removeAttribute("busDetailsSession");
		session.removeAttribute("ticketGeneration");
		session.removeAttribute("busRegistration1");
		session.removeAttribute("ticket1");
		session.removeAttribute("count");
		session.invalidate();
		
		return"redirect:/bus/search";
	}
	@RequestMapping(value = "/updatePass")
	public String updateUserPassword(Model model,HttpSession session) throws BusException
	{
		
		return"redirect:/registration/fetch";
	}
	
	@RequestMapping(value = "/booking")
	public String bookTicket(Model model,HttpSession session) throws BusException
	{
		Integer count=1;
		session.setAttribute("count", count);
		return"redirect:/bus/search";
	}
}