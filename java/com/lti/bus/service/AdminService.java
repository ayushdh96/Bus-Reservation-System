package com.lti.bus.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.bus.dao.IAdminDao;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.Bus;

@Service
public class AdminService implements IAdminService {

	@Autowired
	private IAdminDao adminDao;

	@Override
	@Transactional
	public List<Bus> getBusList() throws BusException {
		// TODO Auto-generated method stub
		return adminDao.getBusList();
	}

	@Override
	@Transactional
	public Bus addBus(Bus bus) throws BusException {
		// TODO Auto-generated method stub
		return adminDao.addBus(bus);
	}

	@Override
	@Transactional
	public Bus deleteBus(Integer busId) throws BusException {
		// TODO Auto-generated method stub
		return adminDao.deleteBus(busId);
	}

	@Override
	@Transactional
	public Bus getBusById(Integer busId) throws BusException {
		// TODO Auto-generated method stub
		return adminDao.getBusById(busId);
	}

	@Override
	@Transactional
	public Bus updateBus(Bus bus) throws BusException {
		// TODO Auto-generated method stub
		return adminDao.updateBus(bus);
	}

}
