/**
 * 
 */
package com.project.shopping.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.shopping.domain.User;
import com.project.shopping.mapper.UserMapper;
import com.project.shopping.service.UserService;

/**
* @Title: UserServiceImpl
* @Description:
* @date 2020年4月9日 上午10:30:05
*/
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper userMapper;
	
	public User userLogin(User user) {
		// TODO Auto-generated method stub
		return userMapper.userLogin(user);
	}

	public User userInfo(User user) {
		// TODO Auto-generated method stub
		return userMapper.userInfo(user);
	}

	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.updateUser(user);
	}

	@Override
	public int userzhuce(User user) {
		// TODO Auto-generated method stub
		return userMapper.userzhuce(user);
		
	}

	@Override
	public  Map selectbyUserName(String username) {
		
		Map map =new HashMap();
		User user = new User();
		user.setUsername(username);
		User dbuser=	userMapper.userLogin(user);
		if(null!=dbuser) {
			map.put("code","1");
			map.put("msg","用户名已存在");
		}else {
			map.put("code","0");
			map.put("msg","交易成功");
		}
		return map;
		
		
	}

}
