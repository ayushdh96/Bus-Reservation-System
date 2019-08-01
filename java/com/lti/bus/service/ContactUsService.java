package com.lti.bus.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.bus.dao.IContactUsDao;
import com.lti.bus.model.ContactUs;

@Service
public class ContactUsService implements IContactUsService {

	@Autowired
	IContactUsDao contactUsDao;

	@Transactional
	@Override
	public ContactUs saveDetails(ContactUs contactUs) {
		System.out.println("Contact Us Service Layer");
		return contactUsDao.saveDetails(contactUs);
	}

}
