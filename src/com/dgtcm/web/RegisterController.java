package com.dgtcm.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dgtcm.domain.Patient;
import com.dgtcm.service.RegisterService;

@Controller
public class RegisterController {

	@Autowired
	private RegisterService registerService;
	
	@RequestMapping(value="/registerController.html")
	public ModelAndView register( Patient patient){
	
		int count = registerService.registerService(patient);
		if(count > 0){
			return new ModelAndView("success");
		}else{
			return new ModelAndView("register");
		}
	}
}
