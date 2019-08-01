package com.lti.bus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lti.bus.dao.ITicketDao;
import com.lti.bus.exception.BusException;
import com.lti.bus.model.BusLogin;
import com.lti.bus.model.Ticket;

@Service
public class TicketService implements ITicketService {

	@Autowired
	ITicketDao ticketDao;
	
	@Transactional
	@Override
	public Ticket addTicket(Ticket ticket) throws BusException {
		return ticketDao.addTicket(ticket);
	}

	@Override
	public List<Ticket> getTicketList(BusLogin busLogin) throws BusException {
		
		return ticketDao.getTicketList(busLogin);
	}

}
