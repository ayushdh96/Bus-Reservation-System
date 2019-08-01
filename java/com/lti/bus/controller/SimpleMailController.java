package com.lti.bus.controller;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.PassengerDetails;
import com.lti.bus.service.IPassengerDetailsService;

@RestController
@RequestMapping(value="/mail")
public class SimpleMailController {
	
	@Autowired
	private IPassengerDetailsService passengerDetailsService;

	@Autowired
	private JavaMailSender sender;
	
	@RequestMapping("/sendApproveMail/{passengerId}")
	public String sendMail(@PathVariable("passengerId") Integer passengerId, Model model, PassengerDetails passengerDetails,HttpSession session) throws BusException {
		
		System.out.println("passengerId"+passengerId);
		System.out.println("sssssssssssssssssssssssssssssssssssss****************************** ");
		MimeMessage message = sender.createMimeMessage();
		
		
		String email =passengerDetailsService.getPassengerDetailsById(passengerId).getPassengerEmail();
		System.out.println("Email"+email);
		PassengerDetails passengerDetails1 = (PassengerDetails) session.getAttribute("ticketGeneration");
		String mailBody = " ";
		String subject = " ";
		try {// admin
				mailBody = "Hello, " + passengerDetails1.getPassengerName()+" Your seat has been booked " +"<br>"+
		              "Source :"+ passengerDetails1.getSource() + 
		              "<br>" + "Destination :" + passengerDetails1.getDestination()+
						"<br>"+ "Departure Date :" + passengerDetails1.getDepartureDate()+
						"<br>" + "Departure Time :" + passengerDetails1.getDepartureTime()+
						"<br>" + "Arrival Time :" + passengerDetails1.getArrivalTime()+
						"<br>" + "Fare :" + passengerDetails1.getFare()+
						"<br>" + "Journey Duration :" + passengerDetails1.getJourneyDuration()+
						"<br>" + "Passenger Name :" + passengerDetails1.getPassengerName()+
						"<br>" + "Passenger Age :" + passengerDetails1.getPassengerAge()+
						"<br>" + "Gender :" + passengerDetails1.getPassengerGender()+
						"<br>" + "Passenger Contact :" + passengerDetails1.getPassengerContact()+
						"<br>"+"<br>"+
						"Wish you a comfortable and Safe Journey" ;
				subject = "Booking Confirmation";
			
			
			MimeMessageHelper helper = new MimeMessageHelper(message,true); 
			helper.setFrom(" busadda11@outlook.com");
			helper.setTo(email);
			helper.setText(mailBody,true);
			helper.setSubject(subject);

			model.addAttribute("email", email);
			helper.setTo(email);
		} catch (MessagingException e) {
			e.printStackTrace();
			return "Error while sending mail ..";
		}
		sender.send(message);
		System.out.println("sender : "+sender);
		model.addAttribute("passengerDetails", passengerDetails);
		return "mailSentSuccess";
	}

	/*
	 * @RequestMapping("/sendRejectMail") public String sendRejectMail() {
	 * MimeMessage mimeMessage = sender.createMimeMessage(); MimeMessageHelper
	 * mimeMessageHelper = new MimeMessageHelper(mimeMessage);
	 * 
	 * try { mimeMessageHelper.setTo("demo@gmail.com"); mimeMessageHelper.setText(
	 * "Your application for opening saving account has been rejected. Please re-apply for the same."
	 * ); mimeMessageHelper.setSubject("Mail From Citadel Finance Bank"); } catch
	 * (MessagingException e) { e.printStackTrace(); return
	 * "Error while sending mail .."; } sender.send(mimeMessage); return
	 * "Mail Sent Success!"; }
	 */
}


