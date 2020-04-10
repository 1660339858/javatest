/**
 * 
 */
package com.project.shopping.util;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;


@JsonInclude(Include.NON_NULL)	//如果该属性为NULL则不参与序列化
public class Result {

	private Integer code = 0;//0失败，1成功
	private String msg = null;//响应失败状态码	
	private Object data = null;
	private Integer count = null;
	public Result(Integer code, String msg) {
		super();
		this.code = code;
		this.msg = msg;
	}
	public Result(Integer code, String msg, Object data) {
		super();
		this.code = code;
		this.msg = msg;
		this.data = data;
	}
	
	public Result(Integer code, String msg, Integer count,Object data) {
		super();
		this.code = code;
		this.msg = msg;
		this.data = data;
		this.count = count;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	
	
}

