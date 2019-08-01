package com.lti.bus.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.lti.bus.model.ContactUs;

@Repository
public class ContactUsDao implements IContactUsDao {

	@PersistenceContext
	EntityManager entityManager;

	@Override
	public ContactUs saveDetails(ContactUs contactUs) {
		entityManager.persist(contactUs);
		return contactUs;
	}

}
