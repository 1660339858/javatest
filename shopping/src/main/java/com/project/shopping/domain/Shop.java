/**
 * 
 */
package com.project.shopping.domain;

import java.math.BigDecimal;


/**
* @Title: Shop
* @Description:
* @date 2020年4月9日 上午10:10:41
*/
public class Shop extends PageInformation{
	
	private int shopid;
	private String name;
	private BigDecimal price;
	private String place;
	private String file;
	private int num;
	
	private int businessid;
	private String businessname;
	
	
	
	
	
	@Override
	public String toString() {
		return "Shop [shopid=" + shopid + ", name=" + name + ", price=" + price + ", place=" + place + ", file=" + file
				+ ", num=" + num + ", businessid=" + businessid + ", businessname=" + businessname + "]";
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getShopid() {
		return shopid;
	}
	public void setShopid(int shopid) {
		this.shopid = shopid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public int getBusinessid() {
		return businessid;
	}
	public void setBusinessid(int businessid) {
		this.businessid = businessid;
	}
	public String getBusinessname() {
		return businessname;
	}
	public void setBusinessname(String businessname) {
		this.businessname = businessname;
	}
	
	
	
	
}
