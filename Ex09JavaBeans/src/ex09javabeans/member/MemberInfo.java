package ex09javabeans.member;

import java.util.Date;

public class MemberInfo {
	private String id;
	private String password;
	private String name;
	private Date registerDate;
	private String email;
	private String value1;
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public Date getRegisterDate() {
		return registerDate;
	}
	
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getValue1() {
		return value1;
	}
	
	public void setValue1() {
		this.value1 = value1;
	}
}
