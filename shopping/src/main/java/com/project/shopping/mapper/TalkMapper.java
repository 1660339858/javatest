/**
 * 
 */
package com.project.shopping.mapper;

import java.util.List;

import com.project.shopping.domain.Talk;

/**
* @Title: BusinessMapper
* @Description:
* @date 2020年4月9日 下午1:58:44
*/
public interface TalkMapper {
	
	

	List<Talk> findShoptalk(Talk talk);

	void addtalk(Talk talk);
	
}
