package com.lti.bus.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "Feedback")
public class Feedback {

	@Id
	@Column(name = "feedback_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "FEEDBACK_GEN")
	@SequenceGenerator(name = "FEEDBACK_GEN", sequenceName = "FEEDBACK_seq", allocationSize = 1)
	private Integer feedbackId;
	
	@Column
	@NotEmpty(message = "username is required")
	@Pattern(regexp = "((?=.*\\d)(?=.*[a-z])(?=.*[0-9._]).{5,12})", message = "Incorrect Username")
	private String username;
	
	@Column
	@NotEmpty(message = "email is mandatory")
	@Pattern(regexp = "\\b[A-Za-z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[A-Za-z]{2,4}\\b", message = "email is incorrect")
	private String email;
	
	@Column
	@NotEmpty(message = "kindly fill out feedback")
	private String feild;

	public Feedback() {
		super();
	}

	public Feedback(String username, String email, String feild) {
		super();
		this.username = username;
		this.email = email;
		this.feild = feild;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFeild() {
		return feild;
	}

	public void setFeild(String feild) {
		this.feild = feild;
	}

	@Override
	public String toString() {
		return "Feedback [feedbackId=" + feedbackId + ", username=" + username + ", email=" + email + ", feild=" + feild
				+ "]";
	}

	

}
