package com.lti.bus.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.Feedback;

@Repository
public class FeedbackDao implements IFeedbackDao{

	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	public Feedback addFeedback(Feedback feedback) throws BusException {
		
		entityManager.persist(feedback);
		return feedback;
	}

}
