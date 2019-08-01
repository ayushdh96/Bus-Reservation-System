package com.lti.bus.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.bus.dao.IBusLoginDao;
import com.lti.bus.exception.BusException;
import com.lti.bus.model.BusLogin;

@Service
public class BusLoginService implements IBusLoginService {

	@Autowired
	IBusLoginDao busLoginDao;

	@Transactional
	@Override
	public BusLogin checkLogin(BusLogin busLogin) throws BusException {
		BusLogin busLogin1=busLoginDao.checkLogin(busLogin);
		    System.out.println("checkLogin At Service:  "+busLogin1);
		return busLogin1;
	}

	}

