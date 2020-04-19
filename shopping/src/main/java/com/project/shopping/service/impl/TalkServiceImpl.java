/**
 * 
 */
package com.project.shopping.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.shopping.domain.Talk;
import com.project.shopping.mapper.TalkMapper;
import com.project.shopping.service.TalkService;

/**
* @Title: BusinessServiceImpl
* @Description:
* @date 2020年4月9日 下午2:25:03
*/
@Service
public class TalkServiceImpl implements TalkService {
	@Autowired
	TalkMapper talkMapper;
	@Override
	public List<Talk> findShopTalk(Talk talk) {
		// TODO Auto-generated method stub
		
		return talkMapper.findShoptalk(talk);
	}
	@Override
	public void addtalk(Talk talk) {
		// TODO Auto-generated method stub
		talkMapper.addtalk(talk);
	}

	

}
