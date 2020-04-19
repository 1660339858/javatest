/**
 * 
 */
package com.project.shopping.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.shopping.domain.Business;
import com.project.shopping.domain.PtShopcart;
import com.project.shopping.domain.Shop;
import com.project.shopping.domain.Talk;
import com.project.shopping.domain.User;
import com.project.shopping.service.TalkService;

/**
* @Title: BusinessController
* @Description:
* @date 2020年4月9日 下午2:00:45
*/
@RequestMapping("talk")
@Controller
public class TalkController {


	@Autowired
	TalkService talkService;
	
	@RequestMapping("addTalk")
	public String addTalk(Talk talk,HttpServletRequest request,ModelAndView modelAndView) {
		//从缓存中拿到当前用户信息
		User user =(User) request.getSession().getAttribute("user");
		talk.setUserid(user.getUserid());
		talkService.addtalk(talk);
		
		 return "redirect:../gopinglun?shopid="+talk.getShopid();
		
	}
	
}


