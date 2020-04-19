/**
 * 
 */
package com.project.shopping.service;

import java.util.Map;

import com.project.shopping.domain.User;

/**
* @Title: UserService
* @Description:
* @date 2020年4月9日 上午10:29:27
*/
public interface UserService {
	//用户登陆
		User userLogin(User user);
		
		//查看用户个人信息
		User userInfo(User user);
		
		//修改用户
		int updateUser(User user);

		int userzhuce(User user);

		Map selectbyUserName(String username);
}
