package com.lti.bus.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table
public class Ticket {

	@Id
	@Column(name="ticket_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="TICKET_GEN")
	@SequenceGenerator(name="TICKET_GEN",
	sequenceName="Ticket_seq",allocationSize=1)
	private Integer ticketId;
	
	@NotNull(message="username is required")
	private String userName;
	
	@Column(name="source")
	private String source;
	
	//@NotEmpty(message="Destination is Mandatory!!")
	@Column(name="destination")
	private String destination;
	
	//@NotEmpty(message="Departure Date is Mandatory!!")
	@Column(name="departure_date")
	private String departureDate;
	
	@Column(name="departure_time")
	private String departureTime;
	
	@Column(name="arrival_date")
	private String arrivalDate;
	
	@Column(name="arrival_time")
	private String arrivalTime;
	
	@Column(name="fare")
	private Integer fare;
	
	@Column(name="journey_duration")
	private String journeyDuration;
	
	//@NotEmpty(message="Name is Mandatory!!")
	@Column(name="passenger_Name")
	private String passengerName;
	
	//@NotEmpty(message="Gender is Mandatory!!")
	@Column(name="passenger_Gender")
	private String passengerGender;
	
	//@NotEmpty(message="Age is Mandatory!!")
	@Column(name="passenger_Age")
	private Integer passengerAge;
	
	//@NotEmpty(message="Contact number is Mandatory!!")
	@Column(name="passenger_Contact")
	private String passengerContact;
	
	//@NotEmpty(message="Email is Mandatory!!")
	@Column(name="passenger_Email")
	private String passengerEmail;
	
	public Ticket() {
		// TODO Auto-generated constructor stub
	}

	public Ticket(String userName, String source, String destination, String departureDate, String departureTime,
			String arrivalDate, String arrivalTime, Integer fare, String journeyDuration, String passengerName,
			String passengerGender, Integer passengerAge, String passengerContact, String passengerEmail) {
		super();
		this.userName = userName;
		this.source = source;
		this.destination = destination;
		this.departureDate = departureDate;
		this.departureTime = departureTime;
		this.arrivalDate = arrivalDate;
		this.arrivalTime = arrivalTime;
		this.fare = fare;
		this.journeyDuration = journeyDuration;
		this.passengerName = passengerName;
		this.passengerGender = passengerGender;
		this.passengerAge = passengerAge;
		this.passengerContact = passengerContact;
		this.passengerEmail = passengerEmail;
	}

	public Integer getTicketId() {
		return ticketId;
	}

	public void setTicketId(Integer ticketId) {
		this.ticketId = ticketId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(String departureDate) {
		this.departureDate = departureDate;
	}

	public String getDepartureTime() {
		return departureTime;
	}

	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}

	public String getArrivalDate() {
		return arrivalDate;
	}

	public void setArrivalDate(String arrivalDate) {
		this.arrivalDate = arrivalDate;
	}

	public String getArrivalTime() {
		return arrivalTime;
	}

	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	public Integer getFare() {
		return fare;
	}

	public void setFare(Integer fare) {
		this.fare = fare;
	}

	public String getJourneyDuration() {
		return journeyDuration;
	}

	public void setJourneyDuration(String journeyDuration) {
		this.journeyDuration = journeyDuration;
	}

	public String getPassengerName() {
		return passengerName;
	}

	public void setPassengerName(String passengerName) {
		this.passengerName = passengerName;
	}

	public String getPassengerGender() {
		return passengerGender;
	}

	public void setPassengerGender(String passengerGender) {
		this.passengerGender = passengerGender;
	}

	public Integer getPassengerAge() {
		return passengerAge;
	}

	public void setPassengerAge(Integer passengerAge) {
		this.passengerAge = passengerAge;
	}

	public String getPassengerContact() {
		return passengerContact;
	}

	public void setPassengerContact(String passengerContact) {
		this.passengerContact = passengerContact;
	}

	public String getPassengerEmail() {
		return passengerEmail;
	}

	public void setPassengerEmail(String passengerEmail) {
		this.passengerEmail = passengerEmail;
	}

	@Override
	public String toString() {
		return "Ticket [ticketId=" + ticketId + ", userName=" + userName + ", source=" + source + ", destination="
				+ destination + ", departureDate=" + departureDate + ", departureTime=" + departureTime
				+ ", arrivalDate=" + arrivalDate + ", arrivalTime=" + arrivalTime + ", fare=" + fare
				+ ", journeyDuration=" + journeyDuration + ", passengerName=" + passengerName + ", passengerGender="
				+ passengerGender + ", passengerAge=" + passengerAge + ", passengerContact=" + passengerContact
				+ ", passengerEmail=" + passengerEmail + "]";
	}
	
}
