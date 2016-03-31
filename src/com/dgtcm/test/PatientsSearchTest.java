package com.dgtcm.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dgtcm.domain.Patient;
import com.dgtcm.service.PatientsSearchService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/applicationContext.xml"})
public class PatientsSearchTest {
	
	@Autowired
	private PatientsSearchService patientsSearchService;
	
	private Patient patient;
	
	@Test
	public void test(){
		
		this.patient =  patientsSearchService.searchPatients("张三");
		System.out.println(patient);
		
//		String sql = "SELECT * FROM patient WHERE name = ?";
//		Object[] args = {"张三"};
//		Map<String, Object> map = jdbcTemplate.queryForMap(sql, args);
//		Patient patient = new Patient();
//		for(Map.Entry<String, Object> entry : map.entrySet()){
//			if(entry.getKey().equals("name")){
//				patient.setName("张三");
//			}else if(entry.getKey().equals("gender")){
//				patient.setGender((String)entry.getValue());
//			}else if(entry.getKey().equals("age")){
//				patient.setAge((Integer)entry.getValue());
//			}else if(entry.getKey().equals("address")){
//				patient.setAddress((String)entry.getValue());
//			}else if(entry.getKey().equals("department")){
//				patient.setDepartment((String)entry.getValue());
//			}else if(entry.getKey().equals("idcardNo")){
//				patient.setIdcardNo((String)entry.getValue());
//			}else if(entry.getKey().equals("dateOfBirth")){
//				patient.setDateOfBirth((Integer)entry.getValue());
//			}
//		}
//		System.out.println(patient);
	}
}
