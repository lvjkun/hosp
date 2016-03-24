package com.dgtcm.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.dgtcm.domain.Patient;

@Repository
public class RegisterDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int register(Patient patient){
		String sql = "INSERT INTO patient " +
				"(name, gender, age, address, department, idcardNo, dateOfBirth ) VALUES(?,?,?,?,?,?,?)";
		Object[] args = {patient.getName(), patient.getGender(), patient.getAge(), patient.getAddress(),
				patient.getDepartment(), patient.getIdcardNo(), patient.getDateOfBirth()};
	
		
		return jdbcTemplate.update(sql, args);
	}
}
