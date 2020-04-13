/**
 * 
 */
package com.project.shopping.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.shopping.domain.Order;
import com.project.shopping.domain.PtShopcart;
import com.project.shopping.mapper.OrderMapper;
import com.project.shopping.mapper.PtShopcartMapper;
import com.project.shopping.service.OrderService;
import com.project.shopping.service.ShopcartService;

/**
* @Title: OrderServiceImpl
* @Description:
* @date 2020年4月9日 上午10:31:33
*/
@Service
public class ShopcartServiceImpl implements ShopcartService {

	@Autowired
	PtShopcartMapper orderShopcart;

	@Override
	public int addShopcart(PtShopcart ps) {
		// TODO Auto-generated method stub
		return  orderShopcart.insert(ps);
	}




}
