package com.lti.bus.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.lti.bus.dao.IPassengerDetailsDao;
import com.lti.bus.exception.BusException;
import com.lti.bus.model.Bus;
import com.lti.bus.model.PassengerDetails;

@Service
public class PassengerDetailsService implements IPassengerDetailsService{
	
	@Autowired
	private IPassengerDetailsDao passengerDetailsDao;
	
	@Override
	public Bus getBusById(Integer busId) throws BusException {
		// TODO Auto-generated method stub
		return passengerDetailsDao.getBusById(busId);
	}

	@Override
	public PassengerDetails addPassenger(PassengerDetails passengerDetails) {
		// TODO Auto-generated method stub
		return passengerDetailsDao.addPassenger(passengerDetails);
	}
	
	@Override
	public   PassengerDetails getPassengerDetailsById(Integer passengerId) throws BusException {
		// TODO Auto-generated method stub
		return passengerDetailsDao.getPassengerDetailsById(passengerId);
	}

}
