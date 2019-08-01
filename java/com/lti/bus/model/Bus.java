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
import org.hibernate.validator.constraints.Range;


@Entity
@Table(name="BUS_DETAILS")
public class Bus {
	
	@Id
	@Column(name="bus_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="BUS_GEN")
	@SequenceGenerator(name="BUS_GEN",
	sequenceName="Bus_seq",allocationSize=1)
	private Integer busId;
	
	@Column(name="source")
	private String source;
	
	
	@Column(name="destination")
	private String destination;
	
	@Column(name="departure_date")
	private String departureDate;
	
	@Column(name="departure_time")
	/*@NotEmpty( message="Please enter time")
	@Pattern(regexp="(1[012]|[1-9]):[0-5][0-9](\\s)?(?i)(AM|PM)")*/
	private String departureTime;
	
	@Column(name="arrival_date")
	/*@NotEmpty(message="Departure Date is Mandatory!!")
	//@Pattern(regexp="^(0?[1-9]|[12][0-9]|3[01])[\\/\\-](0?[1-9]|1[012])[\\/\\-]\\d{4}$")
	@Pattern(regexp="^(3[01]|[12][0-9]|0[1-9])/(1[0-2]|0[1-9])/[0-9]{4}$")*/
	private String arrivalDate;
	
	@Column(name="arrival_time")
	/*@NotEmpty( message="Please enter time")
	@Pattern(regexp="(1[012]|[1-9]):[0-5][0-9](\\s)?(?i)(AM|PM)")*/
	private String arrivalTime;
	
	@Column(name="seats_available")
	/*@NotNull( message="Please enter seats available")*/
	private Integer seatsAvailable;
	
	@Column(name="fare")
/*@NotNull(message="Fare is mandatory!!")
	@Range(min=10)*/
	private Integer fare;
	
	@Column(name="journey_duration")
/*	@NotEmpty( message="Please enter duration")
*/	private String journeyDuration;
	
	//No args constructor
	public Bus() {
		
	}

	public Bus(String source, String destination, String departureDate, String departureTime, String arrivalDate,
			String arrivalTime, Integer seatsAvailable, Integer fare, String journeyDuration) {
		super();
		this.source = source;
		this.destination = destination;
		this.departureDate = departureDate;
		this.departureTime = departureTime;
		this.arrivalDate = arrivalDate;
		this.arrivalTime = arrivalTime;
		this.seatsAvailable = seatsAvailable;
		this.fare = fare;
		this.journeyDuration = journeyDuration;
	}

	public Integer getBusId() {
		return busId;
	}

	public void setBusId(Integer busId) {
		this.busId = busId;
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

	public Integer getSeatsAvailable() {
		return seatsAvailable;
	}

	public void setSeatsAvailable(Integer seatsAvailable) {
		this.seatsAvailable = seatsAvailable;
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

	@Override
	public String toString() {
		return "Bus [busId=" + busId + ", source=" + source + ", destination=" + destination + ", departureDate="
				+ departureDate + ", departureTime=" + departureTime + ", arrivalDate=" + arrivalDate + ", arrivalTime="
				+ arrivalTime + ", seatsAvailable=" + seatsAvailable + ", fare=" + fare + ", journeyDuration="
				+ journeyDuration + "]";
	}
	
	
	
	
	
}
