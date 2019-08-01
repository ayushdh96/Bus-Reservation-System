package com.lti.bus.service;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.Bus;
import com.lti.bus.model.PassengerDetails;

public interface IPassengerDetailsService {
	public Bus getBusById(Integer busId)throws BusException;
	public PassengerDetails addPassenger(PassengerDetails passengerDetails);
	public PassengerDetails getPassengerDetailsById(Integer passengerId)throws BusException;
}
