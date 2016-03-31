package com.dgtcm.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dgtcm.domain.Patient;
import com.dgtcm.service.PatientsSearchService;

@Controller
public class PatientsSearchController {
	@Autowired
	private PatientsSearchService patientsSearchService;
	
	@RequestMapping(value="/patientsSearch")
	@ResponseBody
	public void searchPatients(HttpServletRequest request,HttpServletResponse response, String name,Patient patient) throws IOException{
		ServletInputStream in = request.getInputStream();	//通过ServletInputStream获取页面patientsSearch.jsp的ajax代码块传进来的变量name
		byte[] b = new byte[15];
		in.read(b);		//将获取的数据读进字节数组b
		name = new String(b, "UTF-8");		//将数组b得到的字节序列以UTF-8编码创建一个新的String对象，并赋给方法入参字符串name
		patient = patientsSearchService.searchPatients(name.trim());
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		if(patient != null){		
			out.print(patient);
		}else{
			out.print("病人不存在");
		}
		

		
	}
}
