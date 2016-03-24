package com.dgtcm.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	
	public UserDao(){}
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int getMatchCount(String username, String password){
		String sqlStr = "SELECT count(*) FROM user WHERE username=? and password=?";
		Object[] args = {username, password};
		return jdbcTemplate.queryForInt(sqlStr, args);
	}
}
