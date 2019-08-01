package com.lti.bus.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.BusLogin;
import com.lti.bus.model.BusRegistration;

@Repository
public class BusRegistrationDao implements IBusRegistrationDao{

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public List<BusRegistration> getRegistrationList() throws BusException {
			@SuppressWarnings("unchecked")
			List<BusRegistration>registrationList=entityManager.createQuery("from BusRegistration").getResultList();
			/*where departureAirport=:departureAirport and destinationAirport=:destinationAirport")*/
			System.out.println("********** getregistrationList at Dao : "+registrationList);
			System.out.println("Dao layer 1");
			return registrationList;
	}

	@Override
	public BusRegistration addUser(BusRegistration user) throws BusException {
		entityManager.persist(user);
		BusLogin busLogin=new BusLogin(user.getUserName(),user.getPassword() );
		System.out.println("Dao layer 2");
		entityManager.persist(busLogin);
		return user;
	}

	@Override
	public BusRegistration fetchQuestion(BusRegistration user) throws BusException {
		Query query=entityManager.createQuery("from BusRegistration where userName=:userName and securityQuestion=:securityQuestion and securityAnswer=:securityAnswer");
	    query.setParameter("userName", user.getUserName());
	    query.setParameter("securityQuestion", user.getSecurityQuestion());
	    query.setParameter("securityAnswer", user.getSecurityAnswer());
	    List<BusRegistration> results=query.getResultList();
	    System.out.println("fetch question At Dao:  "+results);
		return results.isEmpty() ? null : results.get(0);
		
	}

	@Override
	public BusRegistration updatePassword(BusRegistration user) throws BusException {
		System.out.println("Username in Dao is: "+user.getUserName()+"\nChanged pass in Dao is:"+user.getPassword());
	/*	Query query=entityManager.createQuery("update BusRegistration set password=:password where userName=:userName");
		query.setParameter("userName", user.getUserName());
		query.setParameter("password", user.getPassword());
		query.executeUpdate();*/
		System.out.println("before update : "+user);
		entityManager.merge(user);
		System.out.println("after update : "+user);
		Query query=entityManager.createQuery("update BusLogin set password=:password where userName=:userName");
		query.setParameter("userName", user.getUserName());
		query.setParameter("password", user.getPassword());
		query.executeUpdate();
		return user;
	}

	@Override
	public List<BusRegistration> getProfileList(BusLogin busLogin) throws BusException {
		Query query=entityManager.createQuery("from BusRegistration where userName=:userName");
		query.setParameter("userName", busLogin.getUserName());
		List<BusRegistration> profileList=query.getResultList();
		System.err.println("********** Profile list at dao of fetching details for dashboard******** "+profileList);
		System.err.println("Dao layer fetching data for user profile");
		return profileList;
	}

}
