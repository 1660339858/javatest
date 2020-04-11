/**
 * 
 */
package com.project.shopping.domain;


/**
* @Title: User
* @Description:
* @date 2020年4月9日 上午10:09:15
*/
public class User{

	private int userid;
	private String username;
	private String password;
	private String name;
	private String phone;
	private String address;
	private String type;
	private String file;
	
	
	
	
	public User(int userid, String username, String password, String name, String phone, String address, String type,
			String file) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.type = type;
		this.file = file;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public User() {
		super();
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", password=" + password + ", name=" + name
				+ ", phone=" + phone + ", address=" + address + ", type=" + type + ", file=" + file + "]";
	}
	
	
}
