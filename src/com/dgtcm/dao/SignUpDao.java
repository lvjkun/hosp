package com.dgtcm.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.dgtcm.domain.User;

@Repository
public class SignUpDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int signUp(User user){
		String sql = "INSERT INTO user (username, password) VALUES(? ,?)";
		Object[] args = {user.getUsername(), user.getPassword()}; 
		return jdbcTemplate.update(sql, args);
	}
}
