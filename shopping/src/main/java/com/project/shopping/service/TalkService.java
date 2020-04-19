/**
 * 
 */
package com.project.shopping.service;

import java.util.List;

import com.project.shopping.domain.Talk;

/**
* @Title: BusinessService
* @Description:
* @date 2020年4月9日 下午2:22:43
*/
public interface TalkService {

	List<Talk> findShopTalk(Talk talk);

	void addtalk(Talk talk);
	
}
