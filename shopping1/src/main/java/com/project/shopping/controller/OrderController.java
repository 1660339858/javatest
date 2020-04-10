/**
 * 
 */
package com.project.shopping.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.project.shopping.domain.Business;
import com.project.shopping.domain.Order;
import com.project.shopping.domain.Shop;
import com.project.shopping.domain.User;
import com.project.shopping.service.OrderService;
import com.project.shopping.service.ShopService;
import com.project.shopping.util.Result;

/**
* @Title: OrderController
* @Description:
* @date 2020年4月9日 下午3:39:39
*/
@RequestMapping("order")
@Controller
public class OrderController {

	@Autowired
	OrderService orderService;
	
	@Autowired
	ShopService shopService;
	
	@ResponseBody
	@RequestMapping("findAllOrder")
	public Object findAllOrder(Order order,int page, int limit,ModelAndView modelAndView,HttpServletRequest request) {
		
		String nameString = "";
		int type = Integer.parseInt((String) request.getSession().getAttribute("type"));
		if(type == 1) {
			User user = (User) request.getSession().getAttribute("user");
			nameString = user.getName();
			order.setUserid(user.getUserid());
		}else {
			Business business = (Business) request.getSession().getAttribute("business");
			order.setBusinessid(business.getBusinessid());
			nameString = business.getName();
		}
		
		
		
		System.out.println(order);
		
		PageHelper.startPage(page, limit);
		List<Order> list1 = orderService.findAllOrder(order);
		PageInfo<Order> pageInfo = new PageInfo<Order>(list1);
		Integer total = (int) pageInfo.getTotal();
		List<Order> list2 = pageInfo.getList();
		
		for (Order order2 : list2) {
			order2.setUsername(nameString);
			Shop shop = new Shop();
			shop.setShopid(order2.getShopid());
			order2.setShopname(shopService.findShopInfo(shop).getName());
		}
		
		return new Result(0, "",total,list2);
	}
	
}
