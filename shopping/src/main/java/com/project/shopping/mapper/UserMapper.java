/**
 * 
 */
package com.project.shopping.mapper;

import com.project.shopping.domain.User;

/**
* @Title: UserMapper
* @Description:
* @date 2020年4月9日 上午10:08:16
*/
public interface UserMapper {
	
	//用户登陆
	User userLogin(User user);
	
	//查看用户个人信息
	User userInfo(User user);
	
	//修改用户
	int updateUser(User user);

	int userzhuce(User user);

}
