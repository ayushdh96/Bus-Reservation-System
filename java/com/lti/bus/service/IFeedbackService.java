package com.lti.bus.service;

import com.lti.bus.exception.BusException;
import com.lti.bus.model.Feedback;

public interface IFeedbackService {

	public Feedback addFeedback(Feedback feedback) throws BusException;
}
