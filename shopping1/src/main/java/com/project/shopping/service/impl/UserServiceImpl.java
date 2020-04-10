/**
 * 
 */
package com.project.shopping.service.impl;

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

}
