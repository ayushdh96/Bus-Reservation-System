package com.lti.bus.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.BusLogin;

@Repository
public class BusLoginDao implements IBusLoginDao {
	@PersistenceContext
	private EntityManager entityManager;

	@SuppressWarnings("unused")
	@Override
	public BusLogin checkLogin(BusLogin busLogin) throws BusException {
		Query query=entityManager.createQuery("from BusLogin where userName=:userName and password=:password");
	    query.setParameter("userName", busLogin.getUserName());
	    query.setParameter("password", busLogin.getPassword());
	    List<BusLogin> results=query.getResultList();
	    System.out.println("checkLogin At Dao:  "+results);
		return results.isEmpty() ? null : results.get(0);
	}
}
