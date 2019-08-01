package com.lti.bus.model;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Passenger {


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
}
