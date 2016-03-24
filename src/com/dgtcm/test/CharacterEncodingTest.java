package com.dgtcm.test;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/applicationContext.xml"})
public class CharacterEncodingTest {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Test
	public void test(){
		String sql = "SELECT * FROM patient";
		List<Map<String,Object>> list = jdbcTemplate.queryForList(sql);
		for(Map<String, Object> e : list){
			System.out.println(e.entrySet());
		}
	}
}
