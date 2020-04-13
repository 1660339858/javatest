/**
 * 
 */
package com.project.shopping.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.shopping.domain.PtShopcart;
import com.project.shopping.mapper.PtShopcartMapper;
import com.project.shopping.service.ShopcartService;

/**
* @Title: OrderServiceImpl
* @Description:
* @date 2020年4月9日 上午10:31:33
*/
@Service
public class ShopcartServiceImpl implements ShopcartService {

	@Autowired
	PtShopcartMapper shopcartMapper;

	@Override
	public int addShopcart(PtShopcart ps) {
		// TODO Auto-generated method stub
		return  shopcartMapper.insert(ps);
	}

	@Override
	public List<PtShopcart> selectAllShopcart(Integer userId) {
		return shopcartMapper.selectAllShopcart(userId);
	}

	@Override
	public List<PtShopcart> selectShopcartBs(Integer userId) {
		return shopcartMapper.selectShopcartBs(userId);
	}

	@Override
	public PtShopcart findPtShopcart(PtShopcart ps) {
		// TODO Auto-generated method stub
		return shopcartMapper.selectByPs(ps);
	}

	@Override
	public void updatePtShopcart(PtShopcart ps) {
		// TODO Auto-generated method stub
		shopcartMapper.updateByPrimaryKey(ps);
	}


}
