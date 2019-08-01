package com.lti.bus.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "PASSENGER_DETAILS")
public class PassengerDetails {

	@Id
	@Column(name = "passenger_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "PASSENGER_GEN")
	@SequenceGenerator(name = "PASSENGER_GEN", sequenceName = "Passenger_seq", allocationSize = 1)
	private Integer passengerId;

	@NotEmpty(message = "Source is Mandatory!!")
	@Column(name = "source")
	private String source;

	@NotEmpty(message = "Destination is Mandatory!!")
	@Column(name = "destination")
	private String destination;

	@NotEmpty(message = "Departure Date is Mandatory!!")
	@Column(name = "departure_date")
	private String departureDate;

	@Column(name = "departure_time")
	private String departureTime;

	@Column(name = "arrival_date")
	@NotEmpty(message = "Arrival Date is Mandatory!!")
	// @Pattern(regexp="^(0?[1-9]|[12][0-9]|3[01])[\\/\\-](0?[1-9]|1[012])[\\/\\-]\\d{4}$")
	/* @Pattern(regexp="^(3[01]|[12][0-9]|0[1-9])/(1[0-2]|0[1-9])/[0-9]{4}$") */
	private String arrivalDate;

	@Column(name = "arrival_time")
	private String arrivalTime;

	@Column(name = "fare")
	private Integer fare;

	@Column(name = "journey_duration")
	private String journeyDuration;

	@NotEmpty(message = "Name is Mandatory!!")
	@Column(name = "passenger_Name")
	@Pattern(regexp = "^[a-zA-Z\\s]*$", message = "Name should be only characters")
	private String passengerName;

	@NotEmpty(message = "Gender is Mandatory!!")
	@Column(name = "passenger_Gender")
	private String passengerGender;

	@NotNull(message = "Age is Mandatory!!")
	@Column(name = "passenger_Age")
	/* @NotEmpty(message = "Age is mandatory") */
	/* @Pattern(regexp = "^(0?[1-9]|[1-9][0-9])$", message = "Incorrect format") */
	private Integer passengerAge;

	// @NotEmpty(message="Contact number is Mandatory!!")
	@Column(name = "passenger_Contact")
	@NotEmpty(message = "Phone number is mandatory")
	@Pattern(regexp = "[6-9][0-9]{9}", message = "Invalid phone number")
	private String passengerContact;

	// @NotEmpty(message="Email is Mandatory!!")
	@Column(name = "passenger_Email")
	@NotEmpty(message = "email is mandatory")
	@Pattern(regexp = "\\b[A-Za-z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[A-Za-z]{2,4}\\b", message = "incorrect format")
	private String passengerEmail;

	public PassengerDetails() {

	}

	public PassengerDetails(String source, String destination, String departureDate, String departureTime,
			String arrivalDate, String arrivalTime, Integer fare, String journeyDuration, String passengerName,
			String passengerGender, Integer passengerAge, String passengerContact, String passengerEmail) {
		super();
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

	public Integer getPassengerId() {
		return passengerId;
	}

	public void setPassengerId(Integer passengerId) {
		this.passengerId = passengerId;
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
		return "PassengerDetails [passengerId=" + passengerId + ", source=" + source + ", destination=" + destination
				+ ", departureDate=" + departureDate + ", departureTime=" + departureTime + ", arrivalDate="
				+ arrivalDate + ", arrivalTime=" + arrivalTime + ", fare=" + fare + ", journeyDuration="
				+ journeyDuration + ", passengerName=" + passengerName + ", passengerGender=" + passengerGender
				+ ", passengerAge=" + passengerAge + ", passengerContact=" + passengerContact + ", passengerEmail="
				+ passengerEmail + "]";
	}

}
