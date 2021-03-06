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

import com.project.shopping.domain.Business;
import com.project.shopping.domain.Order;
import com.project.shopping.domain.PageInformation;
import com.project.shopping.domain.PtShopcart;
import com.project.shopping.domain.Shop;
import com.project.shopping.domain.Talk;
import com.project.shopping.domain.User;
import com.project.shopping.service.BusinessService;
import com.project.shopping.service.OrderService;
import com.project.shopping.service.ShopService;
import com.project.shopping.service.ShopcartService;
import com.project.shopping.service.TalkService;
import com.project.shopping.service.UserService;

/**
* @Title: CommonController
* @Description:
* @date 2020年4月9日 上午10:05:00
*/
@Controller
public class CommonController {
	
	@Autowired
	OrderService orderService;
	@Autowired
	UserService userService;
	@Autowired
	ShopService shopService;
	@Autowired
	TalkService talkService;
	@Autowired
	BusinessService businessService;
	@Autowired
	ShopcartService shopcartService;
	
	@Autowired
	//管理员
	@RequestMapping("/goBusinessList")
	public String goBusinessList() {
		return "/manager/business";
	}
	
	@RequestMapping("/goUserList")
	public String goUserList() {
		return "/manager/user";
	}
	
	
	//用户
	@RequestMapping("goZhuce")
	public String goZhuce() {
		return "zhuce";
	}
	
	
	@RequestMapping("gopinglun")
	public String gopinglun( int shopid,ModelMap modelAndView,HttpServletRequest request ) {
	
	
		//通过shopid得到商品详情
		Shop shop = new Shop();
		shop.setShopid(shopid);
		Shop dbshop = shopService.findShopInfo(shop);
		modelAndView.put("shop",dbshop);
		//通过shopid得到商品评价信息
		
		Talk talk = new Talk();
		talk.setShopid(shopid);
		
		List<Talk> list1 =talkService.findShopTalk(talk);
		
		
		for(Talk ta:list1) {
			//通过定单中的shopid 查到此商品的所有信息并放入 order的对象中
			
			User user = new User();
			user.setUserid(ta.getUserid());
			User dbuser = userService.userInfo(user);
			ta.setUsername(dbuser.getUsername());
			//通过定单中的商家Id 查到此商家的所有信息并放入 order的对象中
			
			Business business =new Business();
			business.setBusinessid(ta.getBusinessid());
			Business dbbusiness = businessService.findBusinessInfo(business);
			ta.setBusinessname(dbbusiness.getUsername());
			
			
		}
		
		modelAndView.put("talks", list1);
		
		return "pinglun";
	}
	
	@RequestMapping("gogou")
	public String gogou(ModelMap modelAndView,HttpServletRequest request ) {
		
		PtShopcart ps = new PtShopcart();
		//从缓存中拿到当前用户的信息
		User user=	(User) request.getSession().getAttribute("user");
		//拿到用户所有购物车信息
		List list = shopcartService.selectAllShopcart( user.getUserid());
		//拿到用户购物车所有商家
		List list1 = shopcartService.selectShopcartBs( user.getUserid());
		modelAndView.put("list",list);
		modelAndView.put("list1",list1);
		return "gou";
		
	}
	
	@RequestMapping("gohead")
	public String gohead(ModelMap modelAndView,HttpServletRequest request) {
		
		String shopname=request.getParameter("shopname");
		Shop shop =new Shop();
		shop.setName(shopname);
		//拿到全部商品
		List<Shop> list1 = shopService.findAllShop(shop );
	
		modelAndView.put("s", list1);
		
		return "head";
		
	}
	
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
	
	@RequestMapping("goorder")
	public String goOrder(ModelMap modelAndView,HttpServletRequest request) {
		//查出所有订单信息
		
		Order order =new Order();
		//userId  session
	List<Order> list =	orderService.findAllOrder(order);
		//把拿到的订单的List循环()
		
		for(Order or:list) {
			//通过定单中的shopid 查到此商品的所有信息并放入 order的对象中
		
			Shop shop =new Shop();
			shop.setShopid(or.getShopid());
			Shop dbshop =shopService.findShopInfo(shop);
			or.setShopname(dbshop.getName());
			or.setFile(dbshop.getFile());
			
			//通过定单中的商家Id 查到此商家的所有信息并放入 order的对象中
			
			Business business =new Business();
			business.setBusinessid(or.getBusinessid());
			Business dbbusiness = businessService.findBusinessInfo(business);
			or.setBusinessname(dbbusiness.getUsername());
			
			
		}
		modelAndView.put("list", list); //返回list到jsp页面
		System.out.println(list);
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
