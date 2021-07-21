/* 
 * @author	Xuan Hieu Le
 * contact: xuanhieu.le.1999@gmail.com
 * @date Jul 19, 2021
 * version 1.0
 */
package model.bean;

import java.util.Calendar;
import java.util.Date;
import java.text.SimpleDateFormat;

public class Users {
	
	private int id;
	private String name;
	private String email;
	private String phone;
	private String address;
	private String password;
	private String create_at;
	private int status = 1;
	
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/dd/MM");
	
	public Users() {
	}
	public Users(String email,String password) {
		this.email = email;
		this.password = password;
	}
	public Users(int id,String name, String email, String phone, String address, String password, int status) {
		Date t = cal.getTime();
		this.id=id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.password = password;
		this.create_at = sdf.format(t);
		this.status =status;
	}
	
	public Users(String name, String email, String phone, String address, String password, int status) {
		Date t = cal.getTime();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.password = password;
		this.create_at = sdf.format(t);
		this.status =status;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCreate_at() {
		return create_at;
	}
	public void setCreate_at(String create_at) {
		this.create_at = create_at;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Users [id=" + id + ", name=" + name + ", email=" + email + ", phone=" + phone + ", address=" + address
				+ ", password=" + password + ", create_at=" + create_at + "]";
	}
	
	

}
