package com.dgtcm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dgtcm.dao.SignUpDao;
import com.dgtcm.domain.User;

@Service
public class SignUpService {

	@Autowired
	private SignUpDao signUpDao;
	
	public boolean isSignedUp(User user){
		int num = signUpDao.signUp(user);
		return num > 0;
	}
}
