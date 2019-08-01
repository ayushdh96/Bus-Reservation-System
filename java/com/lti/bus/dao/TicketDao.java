package com.lti.bus.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.BusLogin;
import com.lti.bus.model.BusRegistration;
import com.lti.bus.model.Ticket;

@Repository
public class TicketDao implements ITicketDao {

	@PersistenceContext
	EntityManager entityManager; 
	@Override
	public Ticket addTicket(Ticket ticket) throws BusException {
		System.err.println("Ticket Detials are as follows"+ ticket);
		entityManager.persist(ticket);
		return ticket;
	}
	@Override
	public List<Ticket> getTicketList(BusLogin busLogin) throws BusException {
		@SuppressWarnings("unchecked")
		Query query=entityManager.createQuery("from Ticket where userName=:userName");
		query.setParameter("userName", busLogin.getUserName());
		 List<Ticket> results=query.getResultList();
		 System.err.println("********** ticket list at dao for a particular user name***************** : "+results);
		System.err.println("Dao layer at  ticket");
		return results;
	}

}
