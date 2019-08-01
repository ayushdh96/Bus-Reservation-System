package com.lti.bus.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lti.bus.dao.IBusDao;
import com.lti.bus.exception.BusException;
import com.lti.bus.model.Bus;

@Service
public class BusService implements IBusService {
	@Autowired
	private IBusDao busDao;

	@Override
	public List<Bus> getBusList() throws BusException {
		List<Bus>busList=busDao.getBusList();
		System.out.println("********** getAirlineList at Service : "+busList);
		return busList;
	}

	/*@Override
	public List<Bus> getBuses(String source, String destination) throws BusException {
		List<Bus> busList=busDao.getBuses(source, destination);
		System.out.println("********** getBusList at Service : "+busList);
		return busList;
	}*/

	@Override
	public List<Bus> getBuses(String source, String destination,String departureDate) throws BusException {
		List<Bus> busList=busDao.getBuses(source, destination,departureDate);
		System.out.println("********** Hello!!!! Get searched BusList at Service : "+busList);
		return busList;
	}

	@Override
	public Bus getBusById(Integer busId) throws BusException {
		// TODO Auto-generated method stub
		return busDao.getBusById(busId);
	}

	@Override
	@Transactional
	public Bus updateSeat(Integer busId) throws BusException {
		
		return busDao.updateSeat(busId);
	}
	
//	@Autowired
//	private IBusDao busDao;
//
//	@Override
//	public List<Flight> getAirlineList() throws BusException {
//		List<Flight>airlineList=busDao.getAirlineList();
//		System.out.println("********** getAirlineList at Service : "+airlineList);
//		return airlineList;
//	}
//	
//	@Override
//	public List<Flight> getFlights(String departureAirport, String destinationAirport) throws BusException {
//		List<Flight>airlineList=busDao.getFlights(departureAirport,destinationAirport);
//		System.out.println("********** getAirlineList at Service : "+airlineList);
//		return airlineList;
//	}
//	
//
//	public IBusDao getAirlineDao() {
//		return busDao;
//	}
//
//	public void setAirlineDao(IBusDao busDao) {
//		this.busDao = busDao;
//	}

}
