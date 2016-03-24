package com.dgtcm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dgtcm.dao.UserDao;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public boolean hasMatchUser(String username, String password){
		int matchCount = userDao.getMatchCount(username, password);
		return matchCount > 0;
	}
	
	
}
