package com.lti.bus.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.Bus;
import com.lti.bus.model.BusRegistration;
import com.lti.bus.model.PassengerDetails;
import com.lti.bus.service.IPassengerDetailsService;

@Controller
@RequestMapping(value="/passenger")
public class PassengerDetailsController {

	@Autowired
	private IPassengerDetailsService passengerDetailsService;
	@RequestMapping(value="/details/{busId}",method = RequestMethod.GET)
	public String getPassengerDetails(@PathVariable("busId") Integer busId, Model model, HttpSession session) throws BusException {
	Bus bus=null;
			bus=passengerDetailsService.getBusById(busId);
			
	PassengerDetails passengerDetails=new PassengerDetails(bus.getSource(), bus.getDestination(), bus.getDepartureDate(), bus.getDepartureTime(), bus.getArrivalDate() ,bus.getArrivalTime(), bus.getFare(), bus.getJourneyDuration(),null, null, null, null, null);
	session.setAttribute("busDetailsSession", passengerDetails);
	session.setAttribute("busId", busId);
	/*	passengerDetails.setSource(bus.getSource());
	passengerDetails.setDestination(bus.getDestination());
	passengerDetails.setDepartureDate(bus.getDepartureDate());
	passengerDetails.setDepartureTime(bus.getDepartureTime());
	passengerDetails.setArrivalTime(bus.getArrivalTime());
	passengerDetails.setFare(bus.getFare());
	passengerDetails.setJourneyDuration(bus.getJourneyDuration());*/
	System.err.println("Passenger Details"+ passengerDetails);
	model.addAttribute("passengerDetails", passengerDetails);
	
	return "passengerRegistration";
	
    }
	@RequestMapping(value = "/savePassengerDetails", method = RequestMethod.POST)
	public String saveCustomerAction(@Valid @ModelAttribute("passengerDetails") PassengerDetails passengerDetails, BindingResult bindingResult, Model model,HttpSession session) throws BusException {
	
/*if (bindingResult.hasErrors()) {
			PassengerDetails passengerDetails3 = (PassengerDetails) session.getAttribute("busDetailsSession");
			model.addAttribute("passengerDetails", passengerDetails3);
			System.out.println("Controller layer if case");
			return "passengerRegistration";
		}*/

		System.err.println(passengerDetails);
		PassengerDetails passengerDetails3 = (PassengerDetails) session.getAttribute("busDetailsSession");
		passengerDetails.setSource(passengerDetails3.getSource());
		passengerDetails.setDestination(passengerDetails3.getDestination());
		passengerDetails.setDepartureDate(passengerDetails3.getDepartureDate());
		passengerDetails.setDepartureTime(passengerDetails3.getDepartureTime());
		passengerDetails.setArrivalDate(passengerDetails3.getArrivalDate());
		passengerDetails.setArrivalTime(passengerDetails3.getArrivalTime());
		passengerDetails.setFare(passengerDetails3.getFare());
		passengerDetails.setJourneyDuration(passengerDetails3.getJourneyDuration());
		System.err.println("this is passenger details"+  passengerDetails);
		PassengerDetails passengerDetails1=passengerDetailsService.addPassenger(passengerDetails);
		model.addAttribute("passengerDetails", passengerDetails1);
		session.setAttribute("ticketGeneration", passengerDetails);
		Integer count=(Integer) session.getAttribute("count");
		if(count==null)
		{
			return "redirect:/login/showLogin";
		}
		else
		{
		return "payment2";
		}
		}
	
	
}