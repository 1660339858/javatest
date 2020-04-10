/**
 * 
 */
package com.project.shopping.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.shopping.domain.Business;
import com.project.shopping.mapper.BusinessMapper;
import com.project.shopping.service.BusinessService;

/**
* @Title: BusinessServiceImpl
* @Description:
* @date 2020年4月9日 下午2:25:03
*/
@Service
public class BusinessServiceImpl implements BusinessService {

	@Autowired
	BusinessMapper businessMapper;
	
	@Override
	public Business businessLogin(Business business) {
		// TODO Auto-generated method stub
		return businessMapper.businessLogin(business);
	}

	@Override
	public int updateBusiness(Business business) {
		// TODO Auto-generated method stub
		return businessMapper.updateBusiness(business);
	}

}
