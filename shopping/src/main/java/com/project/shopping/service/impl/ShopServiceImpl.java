/**
 * 
 */
package com.project.shopping.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.shopping.domain.Shop;
import com.project.shopping.mapper.ShopMapper;
import com.project.shopping.service.ShopService;

/**
* @Title: ShopServiceImpl
* @Description:
* @date 2020年4月9日 上午10:30:42
*/
@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	ShopMapper shopMapper;
	
	public List<Shop> findAllShop(Shop shop) {
		// TODO Auto-generated method stub
		return shopMapper.findAllShop(shop);
	}
	
	public List<Shop> findAllShop1(Shop shop) {
		// TODO Auto-generated method stub
		return shopMapper.findAllShop1(shop);
	}

	public Shop findShopInfo(Shop shop) {
		// TODO Auto-generated method stub
		return shopMapper.findShopInfo(shop);
	}

	public int updateShop(Shop shop) {
		// TODO Auto-generated method stub
		return shopMapper.updateShop(shop);
	}

	public int insertShop(Shop shop) {
		// TODO Auto-generated method stub
		return shopMapper.insertShop(shop);
	}

	public int deleteShop(Shop shop) {
		// TODO Auto-generated method stub
		return shopMapper.deleteShop(shop);
	}

	@Override
	public List<Shop> selectAllShop() {
		// TODO Auto-generated method stub
		return shopMapper.selectAllShop();
	}

}
