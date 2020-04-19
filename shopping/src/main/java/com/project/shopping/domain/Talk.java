/**
 * 
 */
package com.project.shopping.domain;

/**
* @Title: Business
* @Description:
* @date 2020年4月9日 下午1:54:34
*/
public class Talk{
	private int businessid;
	private int talkid;
	private String content;
	private int userid;
	private int shopid;
	private String shopname;
	
	
	public int getBusinessid() {
		return businessid;
	}
	public void setBusinessid(int businessid) {
		this.businessid = businessid;
	}
	public int getTalkid() {
		return talkid;
	}
	public void setTalkid(int talkid) {
		this.talkid = talkid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getShopid() {
		return shopid;
	}
	public void setShopid(int shopid) {
		this.shopid = shopid;
	}
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public String getBusinessname() {
		return businessname;
	}
	public void setBusinessname(String businessname) {
		this.businessname = businessname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	private String businessname;
	private String username;
	
}
