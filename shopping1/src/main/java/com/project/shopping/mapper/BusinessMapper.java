/**
 * 
 */
package com.project.shopping.mapper;

import com.project.shopping.domain.Business;

/**
* @Title: BusinessMapper
* @Description:
* @date 2020年4月9日 下午1:58:44
*/
public interface BusinessMapper {
	
	//商家登陆
	Business businessLogin(Business business);
	
	//修改商家信息
	int updateBusiness(Business business);

	int Busineszhuce(Business business);
	
}
