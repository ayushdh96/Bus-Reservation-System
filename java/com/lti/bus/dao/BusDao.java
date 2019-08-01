package com.lti.bus.dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.Bus;

@Repository
public class BusDao implements IBusDao {
	
	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public List<Bus> getBusList() throws BusException {
		List<Bus>busList=entityManager.createQuery("from Bus").getResultList();
		System.out.println("********** getBusList at Dao : "+busList);
		return busList;
	}


	@Override
	public List<Bus> getBuses(String source, String destination, String departureDate) throws BusException {
		System.out.println("Source reached at Dao: "+source+"\n Destination reached at Dao: "+destination+ "\n departureDate reached at Dao: " +departureDate);
		Query query=entityManager.createQuery("from Bus where source=:source and destination=:destination and departureDate=:departureDate");
		//List<Bus> busList=entityManager.createQuery("from Bus where source=:source and destination=:destination").getResultList();
		query.setParameter("source",source);
		query.setParameter("destination",destination);
		query.setParameter("departureDate",departureDate);
		List<Bus> busList=query.getResultList();
		System.out.println("get searched buses at Dao: " + busList);
		return busList;
	}


	@Override
	public Bus getBusById(Integer busId) throws BusException {
		return (Bus) entityManager.find(Bus.class,busId);
	}


	@Override
	public Bus updateSeat(Integer busId) throws BusException {
		// TODO Auto-generated method stub
		System.err.println("Bus ID At DAO Layer: " +busId);
		Bus bus=getBusById(busId);
//		if (bus!=null) {
			Query query=entityManager.createQuery("update Bus set seatsAvailable=(seatsAvailable-1) where busId=:busId");
			query.setParameter("busId",busId);
			query.executeUpdate();
//		}
		return bus;
		
	}
	
	
	
/*	public Bus updateSeats(Integer busId) throws BusException{
		System.out.println("Update the seats-----------");
	
		Query query=entityManager.create
		return bus;
	}*/

//	@PersistenceContext
//	private EntityManager entityManager;
//
//	@SuppressWarnings("unchecked")
//	@Override
//	public List<Flight> getAirlineList() throws BusException {
//		List<Flight>airlineList=entityManager.createQuery("from Flight").getResultList();
//		/*where departureAirport=:departureAirport and destinationAirport=:destinationAirport")*/
//		System.out.println("********** getAirlineList at Dao : "+airlineList);
//		return airlineList;
//	}
//
//	@Override
//	public List<Flight> getFlights(String departureAirport, String destinationAirport) throws BusException {
//		List<Flight> flightList=entityManager.createQuery("from Flight where departureAirport=:departureAirport and destinationAirport=:destinationAirport").getResultList();
//		return flightList;
//	}

	/*@Override
	public List<Bus> getBuses(String source, String destination) throws BusException {
		List<Bus> busList=entityManager.createQuery("from Bus where source=:source and destination=:destination").getResultList();
		return busList;
	}*/
}
