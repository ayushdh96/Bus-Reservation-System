package com.lti.bus.service;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.BusLogin;

public interface IBusLoginService {

	public BusLogin checkLogin(BusLogin busLogin) throws BusException;
}
