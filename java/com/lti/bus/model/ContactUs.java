package com.lti.bus.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Table(name = "CONTACT_US")
public class ContactUs {
	
	@Id
	@Column(name="customer_Id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="CONTACT_GEN")
	@SequenceGenerator(name="CONTACT_GEN",
	sequenceName="CONTACT_US_seq",allocationSize=1)
	private Integer contactId;
	
	@NotEmpty(message="please enter name")
	@Pattern(regexp = "[A-Za-z]+", message = "First name should be only characters")
	private String name;
	
	
	@NotEmpty(message="please enter message")
	private String message;
	
	
	@NotEmpty(message = "email is mandatory")
	@Pattern(regexp = "\\b[A-Za-z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[A-Za-z]{2,4}\\b", message = "email is incorrect")
	private String email;

	public ContactUs() {
		super();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public ContactUs(String name, String message, String email) {
		super();
		this.name = name;
		this.message = message;
		this.email = email;
	}

	@Override
	public String toString() {
		return "ContactUs [name=" + name + ", message=" + message + ", email=" + email + "]";
	}
	
	
}
