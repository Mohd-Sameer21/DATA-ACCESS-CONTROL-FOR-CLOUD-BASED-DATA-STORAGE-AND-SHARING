package com.BeanClasses;

public class BeanClassMethods {
private String username;
private String password;
private String rpassword;
private String gender;
private String mailid;
private String number;
private String Address;
private String adminname;
private String adminpassword,dat,nat;

private String from,to,fname;
public String getFrom() {
	return from;
}
public void setFrom(String from) {
	this.from = from;
}
public String getTo() {
	return to;
}
public void setTo(String to) {
	this.to = to;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getAdminname() {
	return adminname;
}
public void setAdminname(String adminname) {
	this.adminname = adminname;
}
public String getAdminpassword() {
	return adminpassword;
}
public void setAdminpassword(String adminpassword) {
	this.adminpassword = adminpassword;
}
private int key;
public int getKey() {
	return key;
}
public void setKey(int key) {
	this.key = key;
}
public String getRpassword() {
	return rpassword;
}
public void setRpassword(String rpassword) {
	this.rpassword = rpassword;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getMailid() {
	return mailid;
}
public void setMailid(String mailid) {
	this.mailid = mailid;
}
public String getNumber() {
	return number;
}
public void setNumber(String number) {
	this.number = number;
}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
public void setDat(String address) {
	dat = address;
}
public void setNat(String address) {
	nat = address;
}
public String getUsername() {
	return username;
}
public String getDat() {
	return dat;
}
public String getNat() {
	return nat;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
}
