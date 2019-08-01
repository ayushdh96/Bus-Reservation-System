package com.lti.bus.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.bus.dao.IBusRegistrationDao;
import com.lti.bus.exception.BusException;
import com.lti.bus.model.BusLogin;
import com.lti.bus.model.BusRegistration;

@Service
public class BusRegistrationService implements IBusRegistrationService {

	@Autowired
	IBusRegistrationDao busRegistrationDao;

	@Override
	public List<BusRegistration> getRegistrationList() throws BusException {

		System.out.println("We are in servicelayer implementing dao" + busRegistrationDao.getRegistrationList());
		return busRegistrationDao.getRegistrationList();
	}

	@Override
	@Transactional
	public BusRegistration addUser(BusRegistration user) throws BusException {
		busRegistrationDao.addUser(user);
		return user;
	}

	@Override
	@Transactional
	public BusRegistration fetchQuestion(BusRegistration user) throws BusException {
		
		return busRegistrationDao.fetchQuestion(user);
	}

	@Override
	@Transactional
	public BusRegistration updatePassword(BusRegistration user) throws BusException {
		busRegistrationDao.updatePassword(user);
		return user;
	}
	
	@Override
	@Transactional
	public List<BusRegistration> getProfileList(BusLogin busLogin) throws BusException {
		return busRegistrationDao.getProfileList(busLogin);
	}

}
