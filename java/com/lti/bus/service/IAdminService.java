package com.lti.bus.service;

import java.util.List;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.Bus;




public interface IAdminService {
	
	public List<Bus> getBusList()throws BusException;
	public Bus addBus(Bus bus)throws BusException;
	public Bus deleteBus(Integer busId)throws BusException;
	public Bus getBusById(Integer busId)throws BusException;
	public Bus updateBus(Bus bus)throws BusException;

	

}
