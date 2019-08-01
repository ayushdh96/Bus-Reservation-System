package com.lti.bus.dao;

import java.util.List;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.BusLogin;
import com.lti.bus.model.Ticket;

public interface ITicketDao {

	public List<Ticket> getTicketList(BusLogin busLogin) throws BusException;
	public Ticket addTicket(Ticket ticket) throws BusException;
}
