package com.dgtcm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dgtcm.dao.RegisterDao;
import com.dgtcm.domain.Patient;

@Service
public class RegisterService {

	@Autowired
	private RegisterDao registerDao;
	
	public int registerService(Patient patient){
		return registerDao.register(patient);
	}
}
