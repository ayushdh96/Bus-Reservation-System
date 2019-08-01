package com.lti.bus.dao;


import java.util.List;


import com.lti.bus.exception.BusException;
import com.lti.bus.model.Bus;

public interface IBusDao {
	public List<Bus> getBusList()throws BusException;
	public List<Bus> getBuses(String source, String destination,String departureDate) throws BusException;
	public Bus getBusById(Integer busId)throws BusException;
	public Bus updateSeat(Integer busId)throws BusException;
}
