package com.lti.bus.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.Bus;
import com.lti.bus.model.PassengerDetails;

@Repository
public class PassengerDetailsDao implements IPassengerDetailsDao{
	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public Bus getBusById(Integer busId) throws BusException {
		
		return (Bus) entityManager.find(Bus.class, busId);
	}
	

	@Transactional
	@Override
	public PassengerDetails addPassenger(PassengerDetails passengerDetails) {
		entityManager.persist(passengerDetails);
		return passengerDetails;
	}
	
	@Override
	public PassengerDetails getPassengerDetailsById(Integer passengerId) throws BusException {
		// TODO Auto-generated method stub
		return (PassengerDetails) entityManager.find(PassengerDetails.class, passengerId);
	}


}
