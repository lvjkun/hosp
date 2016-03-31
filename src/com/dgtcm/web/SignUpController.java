package com.dgtcm.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dgtcm.domain.User;
import com.dgtcm.service.SignUpService;

@Controller
public class SignUpController {

	@Autowired
	private SignUpService signUpService;
	
	@RequestMapping(value="/signUp.html")
	public ModelAndView loginCheck(User user){
		boolean isSignedUp = signUpService.isSignedUp(user);
		if( ! isSignedUp ){
			return new ModelAndView("login", "error", "注册失败，请重新输入");
		}else{
			return new ModelAndView("login","error","注册成功，请输入注册的帐号密码登录");
		}
	}
}
