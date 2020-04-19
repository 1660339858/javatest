/**
 * 
 */
package com.project.shopping.service;

import java.util.List;

import com.project.shopping.domain.Order;
import com.project.shopping.domain.PtShopcart;
import com.project.shopping.domain.Shop;

/**
* @Title: OrderService
* @Description:
* @date 2020年4月9日 上午10:30:54
*/
public interface ShopcartService {
		
	int addShopcart(PtShopcart ps);

	List<PtShopcart> selectAllShopcart(Integer userId);
	List<PtShopcart> selectShopcartBs(Integer userId);

	PtShopcart findPtShopcart(PtShopcart ps);

	void updatePtShopcart(PtShopcart ps);
	
//	int deleteByPrimaryKey(int shopcartid);

	void deleteByPrimaryKey(Integer shopcartid);  
}
