/**
 * 
 */
package com.project.shopping.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.shopping.domain.Business;
import com.project.shopping.domain.User;
import com.project.shopping.service.BusinessService;
import com.project.shopping.service.UserService;

/**
* @Title: UserController
* @Description:
* @date 2020年4月9日 上午11:19:18
*/
@RequestMapping("user")
@Controller
public class UserController {
	
	Map<String,Object> map = new HashMap<String,Object>();
	
	@Autowired
	UserService userService;
	
	@Autowired
	BusinessService businessService;
	
	@RequestMapping("userLogin")
	public String userLogin(User user,HttpServletRequest request,ModelAndView modelAndView) {
		
		
		 HttpSession session = request.getSession(); //将用户信息存储到Session
		 session.setAttribute("type", user.getType());
		if(user.getType().equals("1")) {
			user = userService.userLogin(user);
			if(user != null) {
				session.setAttribute("user", user);
				return "index";
			}
		}else {
			Business business = new Business();
			business.setUsername(user.getUsername());
			business.setPassword(user.getPassword());
			business = businessService.businessLogin(business);
			if(business != null) {
				session.setAttribute("business", business);
				return "business/index";
			}
		}
		
		
		return "login";
		
	}
	
	@ResponseBody
	@RequestMapping("updateUser")
	public Map<String, Object> updateUser(User user,HttpServletRequest request,ModelAndView modelAndView) {
		
		int res = userService.updateUser(user);
		
		
		if(res > 0) {
			map.put("code","0");
			map.put("msg","修改成功");
			request.getSession().setAttribute("user", user);
		}
		
		return map;
		
	}
}
