package com.dgtcm.domain;

import java.io.Serializable;

public class Patient implements Serializable{
	private int id;
	private String name;
	private String gender;
	private int age;
	private String address;
	private String department;
	private String idcardNo;
	private int dateOfBirth;
	
	public String getIdcardNo() {
		return idcardNo;
	}
	public void setIdcardNo(String idcardNo) {
		this.idcardNo = idcardNo;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	
	public int getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(int dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	@Override
	public  String toString() {
		return " 姓名:" + name + ", 性别:" + gender
				+ ", 年龄：" + age + ", 地址：" + address + ", 科室："
				+ department + ", 身份证号码：" + idcardNo + ", 出生日期："
				+ dateOfBirth + "。";
	}
	
}
