/**
 * 
 */
package com.project.shopping.service;

import java.util.List;

import com.project.shopping.domain.Shop;
import com.project.shopping.domain.Talk;

/**
* @Title: ShopService
* @Description:
* @date 2020年4月9日 上午10:30:21
*/
public interface ShopService {
	//显示所有商品
	List<Shop> findAllShop(Shop shop);

	//显示所有商品
	List<Shop> findAllShop1(Shop shop);
	
	//查看单个商品信息 根据shopid去查
	Shop findShopInfo(Shop shop);
	
	//修改商品信息 主要是数量修改
	int updateShop(Shop shop);
	
	//添加商品
	int insertShop(Shop shop);
	
	//删除商品
	int deleteShop(Shop shop);

	List<Shop> selectAllShop();

}
