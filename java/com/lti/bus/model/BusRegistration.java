package com.lti.bus.model;

import java.io.Serializable;
import java.sql.Date;

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
@Table(name = "REGISTER_BUS")
public class BusRegistration implements Serializable {

	private static final long serialVersionUID = 8722751232709902785L;

	@Id
	@Column(name = "registration_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "BUS_GEN")
	@SequenceGenerator(name = "BUS_GEN", sequenceName = "REGISTER_BUS_seq", allocationSize = 1)
	private Integer registrationId;

	@Column(name = "title")
	private String title;

	@Column(name = "user_name", unique = true)
	@Pattern(regexp = "((?=.*\\d)(?=.*[a-z])(?=.*[0-9._]).{5,12})", message = "Incorrect format")
	
	private String userName;

	@Column(name = "first_name")
	@NotEmpty(message = "First name is mandatory")
	@Pattern(regexp = "[A-Za-z]+", message = "First name should be only characters")
	private String firstName;

	@Column(name = "middle_name")
	private String middleName;

	@Column(name = "last_name")
	@NotEmpty(message = "Last name is mandatory")
	@Pattern(regexp = "[A-Za-z]+", message = "Last name should be only characters")
	private String lastName;

	@Column(name = "email_id")
	@NotEmpty(message = "email is mandatory")
	@Pattern(regexp = "\\b[A-Za-z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[A-Za-z]{2,4}\\b", message = "email is incorrect")
	private String emailId;

	@Column(name = "password")
	@NotEmpty(message = "Password is mandatory")
	@Pattern(regexp = "((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{8,20})", message = "Incorrect format")
	private String password;

	// @Column(name = "dob")
	// @DateTimeFormat(pattern="dd.MM.yyyy")
	// private Date dob;

	@Column(name = "phone_no")
	@NotEmpty(message = "Phone number is mandatory")
	@Pattern(regexp = "[6-9][0-9]{9}", message = "Invalid phone number")
	private String phoneNo;

	@Column(name = "security_question")
	private String securityQuestion;

	@Column(name = "security_answer")
	@NotEmpty(message = "Please enter an answer")
	private String securityAnswer;

	public BusRegistration() {

	}

	public BusRegistration(String title, String userName, String firstName, String middleName, String lastName,
			String emailId, String password, String phoneNo, String securityQuestion, String securityAnswer) {
		super();
		this.title = title;
		this.userName = userName;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.emailId = emailId;
		this.password = password;
		this.phoneNo = phoneNo;
		this.securityQuestion = securityQuestion;
		this.securityAnswer = securityAnswer;
	}

	public Integer getRegistrationId() {
		return registrationId;
	}

	public void setRegistrationId(Integer registrationId) {
		this.registrationId = registrationId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getSecurityQuestion() {
		return securityQuestion;
	}

	public void setSecurityQuestion(String securityQuestion) {
		this.securityQuestion = securityQuestion;
	}

	public String getSecurityAnswer() {
		return securityAnswer;
	}

	public void setSecurityAnswer(String securityAnswer) {
		this.securityAnswer = securityAnswer;
	}

	@Override
	public String toString() {
		return "BusRegistration [registrationId=" + registrationId + ", title=" + title + ", userName=" + userName
				+ ", firstName=" + firstName + ", middleName=" + middleName + ", lastName=" + lastName + ", emailId="
				+ emailId + ", password=" + password + ", phoneNo=" + phoneNo + ", securityQuestion=" + securityQuestion
				+ ", securityAnswer=" + securityAnswer + "]";
	}

}