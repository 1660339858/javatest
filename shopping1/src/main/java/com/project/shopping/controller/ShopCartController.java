/**
 * 
 */
package com.project.shopping.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.project.shopping.domain.Business;
import com.project.shopping.domain.PtShopcart;
import com.project.shopping.domain.Shop;
import com.project.shopping.domain.User;
import com.project.shopping.service.BusinessService;
import com.project.shopping.service.OrderService;
import com.project.shopping.service.ShopService;
import com.project.shopping.service.ShopcartService;
import com.project.shopping.util.Result;

/**
* @Title: OrderController
* @Description:
* @date 2020年4月9日 下午3:39:39
*/
@RequestMapping("shopcart")
@Controller

public class ShopCartController {

	@Autowired
	ShopcartService shopcartService;
	@Autowired
	ShopService shopService;
	@Autowired
	BusinessService businesService;
	
	@RequestMapping("delshopcart")
	public String delshopcart(int shopcartid,HttpServletRequest request,ModelAndView modelAndView) {
//		String i=request.getParameter("shopcartid");
		shopcartService.deleteByPrimaryKey(shopcartid);
		return "redirect:/gogou";
	}
	
	@ResponseBody
	@RequestMapping("addShopcart")
	public String updateUser(PtShopcart ps,HttpServletRequest request,ModelAndView modelAndView) {
		//从缓存中拿到当前用户信息
		User user =(User) request.getSession().getAttribute("user");
		ps.setUserid(user.getUserid());
		ps.setUsername(user.getUsername());
		
		//查看是否有加入过购物车
		
		PtShopcart dbps =shopcartService.findPtShopcart(ps);
		
		
		// 从商品表拿到商品信息
		Shop shop =new Shop();
		shop.setShopid(ps.getShopid());
		Shop dbshop =shopService.findShopInfo(shop);
		ps.setShopname(dbshop.getName());
		ps.setFile(dbshop.getFile());
		ps.setPlace(dbshop.getPlace());
		ps.setPrice(dbshop.getPrice());
		
		//从商家表拿到商家信息
		Business bs =new Business();
		bs.setBusinessid(ps.getBusinessid());
		Business dbbusiness=businesService.findBusinessInfo(bs);
		ps.setBusinessname(dbbusiness.getUsername());

		if(null!=dbps) {
			ps.setShopcartid(dbps.getShopcartid());
			ps.setShopnum(dbps.getShopnum()+1);
			shopcartService.updatePtShopcart(ps);
		}else {
			ps.setShopnum(1);
			shopcartService.addShopcart(ps);		
			
		}
		
		 return "redirect:/head";
		
	}
}
