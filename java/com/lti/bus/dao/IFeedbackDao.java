package com.lti.bus.dao;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.Feedback;

public interface IFeedbackDao {

	public Feedback addFeedback(Feedback feedback) throws BusException;
}
