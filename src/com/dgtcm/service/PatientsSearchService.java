package com.dgtcm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dgtcm.dao.PatientsSearchDao;
import com.dgtcm.domain.Patient;

@Service
public class PatientsSearchService {
	@Autowired
	private PatientsSearchDao patientsSearchDao;
	
	public Patient searchPatients(String name){
		 return patientsSearchDao.searchPatients(name);
		 
	}
}
