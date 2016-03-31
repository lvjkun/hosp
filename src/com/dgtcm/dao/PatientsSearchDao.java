package com.dgtcm.dao;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.dgtcm.domain.Patient;

@Repository
public class PatientsSearchDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	/*
	 * 当jdbcTemplate.queryForMap返回空集时，try-catch块捕获异常，返回一个空的patient对象
	 */
	public Patient searchPatients(String name){
		String sql = "SELECT * FROM patient WHERE name = ?";
		Object[] args = {name};
		Map<String, Object> map;
		try {									
			map = jdbcTemplate.queryForMap(sql, args);		
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
		Patient patient = new Patient();
		
		for(Map.Entry<String, Object> entry : map.entrySet()){
			if(entry.getKey().equals("name")){
					patient.setName(name);
			}else if(entry.getKey().equals("gender")){
					patient.setGender((String)entry.getValue());
			}else if(entry.getKey().equals("age")){
					patient.setAge((Integer)entry.getValue());
			}else if(entry.getKey().equals("address")){
					patient.setAddress((String)entry.getValue());
			}else if(entry.getKey().equals("department")){
					patient.setDepartment((String)entry.getValue());
			}else if(entry.getKey().equals("idcardNo")){
					patient.setIdcardNo((String)entry.getValue());
			}else if(entry.getKey().equals("dateOfBirth")){
					patient.setDateOfBirth((Integer)entry.getValue());
			}
		}
		return patient;
		
	}
	
}
