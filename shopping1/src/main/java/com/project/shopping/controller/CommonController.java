/**
 * 
 */
package com.project.shopping.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.shopping.domain.PageInformation;
import com.project.shopping.domain.Shop;
import com.project.shopping.service.ShopService;

/**
* @Title: CommonController
* @Description:
* @date 2020年4月9日 上午10:05:00
*/
@Controller
public class CommonController {
	
	@Autowired
	ShopService shopService;
	
	@Autowired
	
	//用户
	
	@RequestMapping("/")
	public String goLoginCView() {
		return "login";
	}
	
	@RequestMapping("welcome")
	public Object welcome() {
		return "welcome";
	}
	
	@RequestMapping("goLogin")
	public String goLogin() {
		return "login";
	}
	
	@RequestMapping("goOrder")
	public String goOrder() {
		return "order";
	}
	
	@RequestMapping("goShop")
	public String goShop(ModelMap modelMap,HttpServletRequest request) {
		Shop shop = new Shop();
		shop.setPage(0);
		shop.setLimit(8);
		
		List<Shop> s = shopService.findAllShop1(shop);
		
		shop.setLimit(0);
		List<Shop> s1 = shopService.findAllShop1(shop);
		PageInformation pageInformation = new PageInformation();
		pageInformation.setPage(0);
		pageInformation.setLimit(8);
		pageInformation.setCount(s1.size()%8==0?s1.size()/8:s1.size()/8+1);
		request.getSession().setAttribute("pageinfo", pageInformation);
		request.getSession().setAttribute("name", "");
		modelMap.put("s", s);
		return "shop";
	}
	
	@RequestMapping("goShop1")
	public String goShop1(ModelMap modelMap,HttpServletRequest request) {
		
		return "shop";
	}
	
	@RequestMapping("goUser")
	public String goUser() {
		return "user";
	}
	
	@RequestMapping("goUserInfo")
	public String goUserInfo(HttpServletRequest request) {
		System.out.println(request.getSession().getAttribute("user")+"@@@@@");
		return "userInfo";
	}
	
	//商家
	@RequestMapping("goBusinessShop")
	public String goBusinessShop() {
		return "business/shop";
	}
	
	
	@RequestMapping("goBusinessOrder")
	public String goBusinessOrder() {
		return "business/order";
	}
	
	@RequestMapping("goBusinessInfo")
	public String goBusinessInfo() {
		return "business/userInfo";
	}
}
