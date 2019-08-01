package com.lti.bus.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "Login")
public class BusLogin implements Serializable {

	private static final long serialVersionUID = -838302233379872763L;
	
	@Id
	@NotEmpty(message = "username is required")
	@Pattern(regexp = "((?=.*\\d)(?=.*[a-z])(?=.*[0-9._]).{5,12})", message = "Incorrect Username")
	private String userName;

	@NotEmpty(message = "Password is required")
	@Pattern(regexp = "((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{8,20})", message = "Incorrect Password")
	private String password;

	public BusLogin() {
		super();
	}

	public BusLogin(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "BusLogin [userName=" + userName + ", password=" + password + "]";
	}

}