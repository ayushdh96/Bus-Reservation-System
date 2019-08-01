package com.lti.bus.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpSession;

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
import com.lti.bus.service.IBusService;

@Controller
@RequestMapping(value = "/bus")
public class BusController {
	@Autowired
	private IBusService busService;
	
	@Autowired
	private IBusService busService2;

	//http://localhost:8082/901_BusProject/
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String getSearchPage(Model model) throws BusException {
		model.addAttribute("bus", new Bus());
		List<Bus> busList = busService.getBusList();
		System.out.println("********** getBusList at Controller : ");
		busList.forEach((data) -> System.out.println(data));
		model.addAttribute("busList", busList);
		
		return "busForm";
	}

	@RequestMapping(value = "/getBusDetails", method = RequestMethod.POST)
	public String getAirlineList(@ModelAttribute("bus") Bus bus, BindingResult result, Model model) throws BusException {
		System.out.println("bus at controller : " +bus);
//		model.addAttribute("source", bus.getSource());
//		model.addAttribute("destination", bus.getDestination());
//		model.addAttribute("departureDate", bus.getDepartureDate());
//		String source=bus.getSource();
//		String destination=bus.getDestination();
		//Date departureDate=bus.getDepartureDate();
		if (result.hasErrors()) {
			System.out.println("Controller layer if case");
			return "busForm";
		}
		else {
		List<Bus> busList2=busService2.getBuses(bus.getSource(),bus.getDestination(),bus.getDepartureDate());
		System.out.println("********** Hello!!!! Get searched BusList at Controller : "+busList2);
		busList2.forEach((data) -> System.out.println(data));
		model.addAttribute("busList2", busList2);
		if(busList2.isEmpty())
		{
			return"oops";
		}
		else {
		return "searchPage";
		}
		}
	}
	
	@RequestMapping(value="/bookBus/{busId}")
	public String showBookingPage(@PathVariable("busId") Integer busId, Model model, HttpSession session) throws BusException {
		//return model and view
		model.addAttribute("msg", "Welcome to Seat Selection Page");
		model.addAttribute("today",LocalDate.now());
		//model object associated with name 'msg'
		this.busService.updateSeat(busId);
		
		
		return "bookSeat";//view name which will be returned to dispacherServlet
	}

}
