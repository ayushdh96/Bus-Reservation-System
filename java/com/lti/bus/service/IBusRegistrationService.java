package com.lti.bus.service;

import java.util.List;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.BusLogin;
import com.lti.bus.model.BusRegistration;

public interface IBusRegistrationService {
	public List<BusRegistration> getRegistrationList() throws BusException;
	public BusRegistration addUser(BusRegistration user) throws BusException;
	public BusRegistration fetchQuestion(BusRegistration user) throws BusException;
	public BusRegistration updatePassword(BusRegistration user) throws BusException;
	public List<BusRegistration> getProfileList(BusLogin busLogin) throws BusException;
}