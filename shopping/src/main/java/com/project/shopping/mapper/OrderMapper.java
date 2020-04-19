/**
 * 
 */
package com.project.shopping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;

import com.project.shopping.domain.Order;

/**
* @Title: OrderMapper
* @Description:
* @date 2020年4月9日 上午10:08:40
*/
public interface OrderMapper {
	
	//查看所有订单
	List<Order> findAllOrder(Order order);
	
	//修改订单信息 修改状态
	int updateOrder(Order order);
	
	//修改订单状态 修改数量
	int updataOrderNum(Order order);
	
	//添加订单信息
	int addOrder(Order order);
	
	//判断订单是否已存在 根据用户id 订单id 与状态  如果存在+1 反之进行添加
	int checkOrder(Order order);
	
	//删除未支付的订单
	
	int deleteOrder(Order orderid);
}
