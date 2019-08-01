package com.lti.bus.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.Bus;

@Repository
public class AdminDao implements IAdminDao {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public List<Bus> getBusList() throws BusException {
		// TODO Auto-generated method stub
		// error due to this //return entityManager.createQuery("from
		// BUS_DETAILS").getResultList();
		return entityManager.createQuery("from Bus").getResultList();
	}

	@Override
	public Bus addBus(Bus bus) throws BusException {
		// TODO Auto-generated method stub
		entityManager.persist(bus);
		return bus;
	}

	@Override
	public Bus deleteBus(Integer busId) throws BusException {
		// TODO Auto-generated method stub
		Bus bus = getBusById(busId);
		if (bus != null)
			entityManager.remove(bus);
		return bus;
	}

	@Override
	public Bus getBusById(Integer busId) throws BusException {
		// TODO Auto-generated method stub
		return (Bus) entityManager.find(Bus.class, busId);
	}

	@Override
	public Bus updateBus(Bus bus) throws BusException {
		// TODO Auto-generated method stub
/*
		Query query = entityManager.createQuery(
				"update Bus set  source=:source, destination=:destination, departureDate=:departureDate,departureTime=:departureTime,arrivalTime=:arrivalTime,seatsAvailable=:seatsAvailable,fare=:fare,journeyDuration=:journeyDuration where busId=:Id");
		query.setParameter("Id", bus.getBusId());
		query.setParameter("source", bus.getSource());
		query.setParameter("destination", bus.getDestination());
		query.setParameter("departureDate", bus.getDepartureDate());
		query.setParameter("departureTime", bus.getDepartureTime());
		query.setParameter("arrivalTime", bus.getArrivalTime());
		query.setParameter("seatsAvailable", bus.getSeatsAvailable());
		query.setParameter("fare", bus.getFare());
		query.setParameter("journeyDuration", bus.getJourneyDuration());

		query.executeUpdate();

		System.out.println("bus : " + bus);
		System.out.println("***********************************************************************woo");*/
		System.out.println(" adminService.updateBus(bus) before at DAO : "+bus);
		 entityManager.merge(bus);
		 System.out.println(" adminService.updateBus(bus) after at DAO : "+bus);
		return bus;
	}

}
