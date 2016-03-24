package test;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dgtcm.domain.Patient;
import com.dgtcm.service.RegisterService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/applicationContext.xml"})
public class RegisterTest {
	
	@Autowired
	private RegisterService registerService; 
	
	@Test
	public void register(Patient patient){
		int num = registerService.registerService( patient);
		
		assertTrue( num > 0);
	}
}
