/**
 * 
 */
package com.project.shopping.domain;

/**
* @Title: Business
* @Description:
* @date 2020年4月9日 下午1:54:34
*/
public class Business{
	private int businessid;
	private String username;
	private String password;
	private String name;
	private String phone;
	private String address;
	private String avaliable;
	private String file;
	
	
	
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getAvaliable() {
		return avaliable;
	}
	public void setAvaliable(String avaliable) {
		this.avaliable = avaliable;
	}
	public int getBusinessid() {
		return businessid;
	}
	public void setBusinessid(int businessid) {
		this.businessid = businessid;
	}
	public String getUsername() {
		return username;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	
	
}
