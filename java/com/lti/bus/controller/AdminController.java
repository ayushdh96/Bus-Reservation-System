package com.lti.bus.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.Bus;
import com.lti.bus.service.IAdminService;


@Controller
@RequestMapping(value = "/bus")
public class AdminController {
	@Autowired
	private IAdminService adminService;
	
	// showing custSave.jsp
	@RequestMapping(value = "/addAdminBusForm", method = RequestMethod.GET)
	public String saveBusPage(Model model) throws BusException {
		model.addAttribute("bus", new Bus());
		return "adminbusForm";
	}

	@RequestMapping(value = "/saveBus", method = RequestMethod.GET)
	public String saveBusAction(@ModelAttribute("bus") @Valid Bus bus, BindingResult bindingResult, Model model)
			throws BusException {
/*		if (bindingResult.hasErrors()) {
			return "redirect:addAdminBusForm";
		}*/
		if (bus.getBusId() == null) {
			// new customer, add it
			System.out.println("*******************************************ssssssssssssssssssssssss");
			bus = this.adminService.addBus(bus);

		}
	else{
			System.out.println(" adminService.updateBus(bus) before : "+bus);
		//existing customer, call update
		bus=this.adminService.updateBus(bus);
		System.out.println(" adminService.updateBus(bus) after : "+bus);
   	}
		model.addAttribute("bus", bus);
		model.addAttribute("busList", adminService.getBusList());
		System.out.println("Here.");
		return "redirect:/bus/showBus";
	}
	
//	@RequestMapping(value = "/updateBus", method = RequestMethod.POST)
//	public String updateBusAction(@ModelAttribute("bus") @Valid Bus bus, BindingResult bindingResult, Model model) throws BusException
//	{
//		System.out.println("*******************************************wwwwwwwwwwwwwwwwww");
//		bus=this.adminService.updateBus(bus);
//		
//		model.addAttribute("bus", bus);
//		model.addAttribute("busList", adminService.getBusList());
//		return "redirect:/bus/adminbusForm";
//		
//	}
	
	
	@RequestMapping(value="/showBus", method = RequestMethod.GET)
	public String showBus(Model model) throws BusException{
		List<Bus> busList=
				adminService.getBusList();
		busList.forEach((data)->System.out.println(data)); 
		model.addAttribute("busList",busList);
		return "adminDisplay";
	}
	
	@RequestMapping("/deleteBus/{busId}")
    public String deleteBus(@PathVariable("busId") Integer busId) throws BusException{
        this.adminService.deleteBus(busId);
        return "redirect:/bus/showBus";
    }
 
 @RequestMapping("/editBus/{busId}")
   public String editBus(@PathVariable("busId") Integer busId, Model model) throws BusException{
	 System.out.println("************************************************************************1234");
      model.addAttribute("bus", this.adminService.getBusById(busId));
    model.addAttribute("busList", this.adminService.getBusList());
     return "adminbusForm";
   }
 
 @RequestMapping(value = "/showAdminLogin", method = RequestMethod.GET)
 public String showAdminLogin(Model model) throws BusException {
 return "adminLogin";
 }
 
 
 @RequestMapping(value="/loginAdmin", method=RequestMethod.GET)
 public String validAdmin(@RequestParam("username") String username,
@RequestParam("password") String password, Model model)
 throws BusException
 {
	 System.out.println("Mei hun!!!!!!");
	 if(username.equals("admin")&& password.equals("admin"))
			 {
		 return "redirect:/bus/showdashboard";
			 }
	 
	 else {
		 model.addAttribute("msg","Invalid Admin Credentials");
		 return "adminLogin";
	 }
	 
  }
 
 
 @RequestMapping(value = "/showdashboard", method = RequestMethod.GET)
 public String showdashboard(Model model) throws BusException {
 return "dashboard";
 }
 
 
 
}

