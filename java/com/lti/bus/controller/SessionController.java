package com.lti.bus.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.Bus;
import com.lti.bus.model.BusLogin;
import com.lti.bus.model.PassengerDetails;
import com.lti.bus.model.Ticket;
import com.lti.bus.service.IBusService;

@Controller
@RequestMapping(value = "/session")
public class SessionController {
	@Autowired
	private IBusService busService;
	
	private Integer busNo;

	@RequestMapping(value = "/printTicket")
	public String showTicket(Model model,HttpSession session) throws BusException
	{
		PassengerDetails passengerDetails = (PassengerDetails) session.getAttribute("ticketGeneration");
		BusLogin busLogin = (BusLogin) session.getAttribute("loginSession");
		System.err.println("Passenger Details in Session class"+passengerDetails);
		System.err.println("Passenger Ticket details in session layer"+busLogin);
		Ticket ticket=new Ticket(busLogin.getUserName(), passengerDetails.getSource(), passengerDetails.getDestination(), passengerDetails.getDepartureDate(), passengerDetails.getDepartureTime(), passengerDetails.getArrivalDate() ,passengerDetails.getArrivalTime(), passengerDetails.getFare(), passengerDetails.getJourneyDuration(), passengerDetails.getPassengerName(), passengerDetails.getPassengerGender(), passengerDetails.getPassengerAge(), passengerDetails.getPassengerContact(), passengerDetails.getPassengerEmail());
		session.setAttribute("ticket1", ticket);
		model.addAttribute("passengerTicket", passengerDetails);
		busNo=(Integer) session.getAttribute("busId");
		System.err.println("Bus number at session controller: "+busNo);
		Bus bus=busService.updateSeat(busNo);
		
		return "ticket";
	}
}
