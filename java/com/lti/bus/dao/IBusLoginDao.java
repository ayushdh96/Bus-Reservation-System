package com.lti.bus.dao;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.BusLogin;

public interface IBusLoginDao {
	public BusLogin checkLogin(BusLogin busLogin) throws BusException;
}
