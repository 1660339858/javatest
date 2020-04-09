/**
 * 
 */
package com.project.shopping.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.shopping.domain.Order;
import com.project.shopping.mapper.OrderMapper;
import com.project.shopping.service.OrderService;

/**
* @Title: OrderServiceImpl
* @Description:
* @date 2020年4月9日 上午10:31:33
*/
@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderMapper orderMapper;
	
	public List<Order> findAllOrder(Order order) {
		// TODO Auto-generated method stub
		return orderMapper.findAllOrder(order);
	}

	public int updateOrder(Order order) {
		// TODO Auto-generated method stub
		return orderMapper.updateOrder(order);
	}

	public int updataOrderNum(Order order) {
		// TODO Auto-generated method stub
		return orderMapper.updataOrderNum(order);
	}

	public int addOrder(Order order) {
		// TODO Auto-generated method stub
		return orderMapper.addOrder(order);
	}

	public int checkOrder(Order order) {
		// TODO Auto-generated method stub
		return orderMapper.checkOrder(order);
	}

	public int deleteOrder(Order order) {
		// TODO Auto-generated method stub
		return orderMapper.deleteOrder(order);
	}

}
