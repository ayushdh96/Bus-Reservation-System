package com.lti.bus.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.bus.dao.IFeedbackDao;
import com.lti.bus.exception.BusException;
import com.lti.bus.model.Feedback;

@Service
public class FeedbackService implements IFeedbackService {

	@Autowired
	IFeedbackDao feedbackdao;
	@Transactional
	@Override
	public Feedback addFeedback(Feedback feedback) throws BusException {
		return feedbackdao.addFeedback(feedback);
	}

	
}
