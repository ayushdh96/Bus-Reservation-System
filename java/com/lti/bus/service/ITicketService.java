package com.lti.bus.service;

import java.util.List;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.BusLogin;
import com.lti.bus.model.Ticket;

public interface ITicketService {

	public Ticket addTicket(Ticket ticket) throws BusException;
	public List<Ticket> getTicketList(BusLogin busLogin) throws BusException;
}
