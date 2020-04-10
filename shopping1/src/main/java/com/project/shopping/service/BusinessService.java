/**
 * 
 */
package com.project.shopping.service;

import com.project.shopping.domain.Business;

/**
* @Title: BusinessService
* @Description:
* @date 2020年4月9日 下午2:22:43
*/
public interface BusinessService {
	//商家登陆
	Business businessLogin(Business business);
	
	//修改商家信息
	int updateBusiness(Business business);
}
