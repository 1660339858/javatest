package com.project.shopping.domain;

import java.io.Serializable;
import java.math.BigDecimal;

public class PtShopcart implements Serializable {
    private Integer shopcartid;
    private Integer shopid; 
    private String shopname;
    private Integer shopnum;
    private Integer userid;

   
    private String username;

   
    private String businessname;

    private Integer businessid;

    
    private String file;

   
    private BigDecimal price;
    private String place;
    private static final long serialVersionUID = 1L;
    public Integer getShopcartid() {
        return shopcartid;
    }
    public void setShopcartid(Integer shopcartid) {
        this.shopcartid = shopcartid;
    }  
    public Integer getShopid() {
        return shopid;
    }
    public void setShopid(Integer shopid) {
        this.shopid = shopid;
    }
    public String getShopname() {
        return shopname;
    }
    public void setShopname(String shopname) {
        this.shopname = shopname == null ? null : shopname.trim();
    }

    
    public Integer getShopnum() {
        return shopnum;
    }

    
    public void setShopnum(Integer shopnum) {
        this.shopnum = shopnum;
    }

   
    public Integer getUserid() {
        return userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pt_shopcart.userid
     *
     * @param userid the value for pt_shopcart.userid
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pt_shopcart.username
     *
     * @return the value of pt_shopcart.username
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    public String getUsername() {
        return username;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pt_shopcart.username
     *
     * @param username the value for pt_shopcart.username
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pt_shopcart.businessname
     *
     * @return the value of pt_shopcart.businessname
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    public String getBusinessname() {
        return businessname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pt_shopcart.businessname
     *
     * @param businessname the value for pt_shopcart.businessname
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    public void setBusinessname(String businessname) {
        this.businessname = businessname == null ? null : businessname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pt_shopcart.businessid
     *
     * @return the value of pt_shopcart.businessid
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    public Integer getBusinessid() {
        return businessid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pt_shopcart.businessid
     *
     * @param businessid the value for pt_shopcart.businessid
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    public void setBusinessid(Integer businessid) {
        this.businessid = businessid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pt_shopcart.file
     *
     * @return the value of pt_shopcart.file
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    public String getFile() {
        return file;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pt_shopcart.file
     *
     * @param file the value for pt_shopcart.file
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    public void setFile(String file) {
        this.file = file == null ? null : file.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pt_shopcart.price
     *
     * @return the value of pt_shopcart.price
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    public BigDecimal getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pt_shopcart.price
     *
     * @param price the value for pt_shopcart.price
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pt_shopcart.place
     *
     * @return the value of pt_shopcart.place
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    public String getPlace() {
        return place;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pt_shopcart.place
     *
     * @param place the value for pt_shopcart.place
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    public void setPlace(String place) {
        this.place = place == null ? null : place.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pt_shopcart
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", shopcartid=").append(shopcartid);
        sb.append(", shopid=").append(shopid);
        sb.append(", shopname=").append(shopname);
        sb.append(", shopnum=").append(shopnum);
        sb.append(", userid=").append(userid);
        sb.append(", username=").append(username);
        sb.append(", businessname=").append(businessname);
        sb.append(", businessid=").append(businessid);
        sb.append(", file=").append(file);
        sb.append(", price=").append(price);
        sb.append(", place=").append(place);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pt_shopcart
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        PtShopcart other = (PtShopcart) that;
        return (this.getShopcartid() == null ? other.getShopcartid() == null : this.getShopcartid().equals(other.getShopcartid()))
            && (this.getShopid() == null ? other.getShopid() == null : this.getShopid().equals(other.getShopid()))
            && (this.getShopname() == null ? other.getShopname() == null : this.getShopname().equals(other.getShopname()))
            && (this.getShopnum() == null ? other.getShopnum() == null : this.getShopnum().equals(other.getShopnum()))
            && (this.getUserid() == null ? other.getUserid() == null : this.getUserid().equals(other.getUserid()))
            && (this.getUsername() == null ? other.getUsername() == null : this.getUsername().equals(other.getUsername()))
            && (this.getBusinessname() == null ? other.getBusinessname() == null : this.getBusinessname().equals(other.getBusinessname()))
            && (this.getBusinessid() == null ? other.getBusinessid() == null : this.getBusinessid().equals(other.getBusinessid()))
            && (this.getFile() == null ? other.getFile() == null : this.getFile().equals(other.getFile()))
            && (this.getPrice() == null ? other.getPrice() == null : this.getPrice().equals(other.getPrice()))
            && (this.getPlace() == null ? other.getPlace() == null : this.getPlace().equals(other.getPlace()));
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pt_shopcart
     *
     * @mbg.generated Mon Apr 13 21:41:41 CST 2020
     */
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getShopcartid() == null) ? 0 : getShopcartid().hashCode());
        result = prime * result + ((getShopid() == null) ? 0 : getShopid().hashCode());
        result = prime * result + ((getShopname() == null) ? 0 : getShopname().hashCode());
        result = prime * result + ((getShopnum() == null) ? 0 : getShopnum().hashCode());
        result = prime * result + ((getUserid() == null) ? 0 : getUserid().hashCode());
        result = prime * result + ((getUsername() == null) ? 0 : getUsername().hashCode());
        result = prime * result + ((getBusinessname() == null) ? 0 : getBusinessname().hashCode());
        result = prime * result + ((getBusinessid() == null) ? 0 : getBusinessid().hashCode());
        result = prime * result + ((getFile() == null) ? 0 : getFile().hashCode());
        result = prime * result + ((getPrice() == null) ? 0 : getPrice().hashCode());
        result = prime * result + ((getPlace() == null) ? 0 : getPlace().hashCode());
        return result;
    }
}