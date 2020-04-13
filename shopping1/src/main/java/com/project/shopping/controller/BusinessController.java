/**
 * 
 */
package com.project.shopping.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.project.shopping.domain.Business;
import com.project.shopping.domain.PageInformation;
import com.project.shopping.domain.Shop;
import com.project.shopping.service.BusinessService;
import com.project.shopping.service.ShopService;
import com.project.shopping.util.Result;

/**
* @Title: BusinessController
* @Description:
* @date 2020年4月9日 下午2:00:45
*/
@RequestMapping("business")
@Controller
public class BusinessController {

	@Autowired
	ShopService shopService;
	
	@Autowired
	BusinessService businessService;
	
	Map<String,Object> map = new HashMap<String,Object>(); 
	
	
	@ResponseBody
	@RequestMapping("updateBusiness")
	public Object updateBusiness(Business business,HttpServletRequest request) {
		
		int res = businessService.updateBusiness(business);
		
		if(res > 0) {
			request.getSession().setAttribute("business", business);
			map.put("code","0");
			map.put("msg","修改成功");
		}else {
			map.put("code","1");
			map.put("msg","修改失败");
		}
		
		return map;
	}
	
	@ResponseBody
	@RequestMapping("findAllShop")
	public Object findAllShop(Shop shop,int page, int limit,ModelAndView modelAndView,HttpServletRequest request) {
		
		Business business = (Business) request.getSession().getAttribute("business");
		shop.setBusinessid(business.getBusinessid());
		
		PageHelper.startPage(page, limit);
		List<Shop> list1 = shopService.findAllShop(shop);
		PageInfo<Shop> pageInfo = new PageInfo<Shop>(list1);
		Integer total = (int) pageInfo.getTotal();
		List<Shop> list2 = pageInfo.getList();
		
		for (Shop shop2 : list2) {
			shop2.setBusinessname(business.getName());
		}
		
		return new Result(0, "",total,list2);
	}
	
	@RequestMapping("findAllShop1")
	public String findAllShop1(Shop shop,
			@RequestParam(value="page",defaultValue="0")int page, 
			@RequestParam(value="limit",defaultValue="8")int limit,
			int count,
			ModelMap modelAndView,HttpServletRequest request) {
		
		if(page <= 0) page = 0;
		if(page >= count) page = count-1;
		shop.setPage(page*8);
		List<Shop> list1 = shopService.findAllShop1(shop);
		
		System.out.println(shop.getPage()+shop.getLimit());
		for (Shop shop2 : list1) {
			System.out.println(shop2);
		}
		shop.setLimit(0);
		System.out.println(shop.getPage()+shop.getLimit());
		List<Shop> list2 = shopService.findAllShop1(shop);
		PageInformation pageInformation = new PageInformation();
		pageInformation.setPage(page);
		pageInformation.setLimit(limit);
		pageInformation.setCount(list2.size()%8==0?list2.size()/8:list2.size()/8+1);
		
		request.getSession().setAttribute("name", shop.getName());
		request.getSession().setAttribute("pageinfo", pageInformation);
		modelAndView.put("s", list1);
		return "head";
	}
	
	
	@ResponseBody
	@RequestMapping("addShop")
	public Object addShop(Shop shop,HttpServletRequest request) {
		
		System.out.println(shop);
		// 从缓存拿到商家信息
		Business business = (Business) request.getSession().getAttribute("business");
		shop.setBusinessid(business.getBusinessid());
		shop.setBusinessname(business.getName());
		
		int res = shopService.insertShop(shop);
		
		if(res > 0) {
			map.put("code","0");
			map.put("msg","添加成功");
		}else {
			map.put("code","1");
			map.put("msg","添加失败");
		}
		
		return map;
	}
	
	@ResponseBody
	@RequestMapping("updateShop")
	public Object updateShop(Shop shop,HttpServletRequest request,String file1,int num2) {
		shop.setFile(file1);
		shop.setNum(num2);
		System.out.println(shop);
//		Business business = (Business) request.getSession().getAttribute("business");
//		shop.setBusinessid(business.getBusinessid());
//		shop.setBusinessname(business.getName());
		
		int res = shopService.updateShop(shop);
		
		if(res > 0) {
			map.put("code","0");
			map.put("msg","修改成功");
		}else {
			map.put("code","1");
			map.put("msg","修改失败");
		}
		
		return map;
	} 
	
	@ResponseBody
	@RequestMapping("deleteShop")
	public Object deleteShop(Shop shop,HttpServletRequest request) {
		
		Business business = (Business) request.getSession().getAttribute("business");
		shop.setBusinessid(business.getBusinessid());
		shop.setBusinessname(business.getName());
		
		int res = shopService.deleteShop(shop);
		
		if(res > 0) {
			map.put("code","0");
			map.put("msg","删除成功");
		}else {
			map.put("code","1");
			map.put("msg","删除失败");
		}
		
		return map;
	} 
}


