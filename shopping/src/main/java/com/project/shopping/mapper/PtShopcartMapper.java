package com.project.shopping.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.shopping.domain.PtShopcart;

@Mapper
public interface PtShopcartMapper {
    void deleteByPrimaryKey(int shopcartid);  
    
    int insert(PtShopcart record);
    
    int insertSelective(PtShopcart record); 
    
    PtShopcart selectByPrimaryKey(Integer shopcartid);
    
    int updateByPrimaryKeySelective(PtShopcart record); 
    
    int updateByPrimaryKey(PtShopcart record);
    
	List<PtShopcart> selectAllShopcart(Integer userId);
	
	List<PtShopcart> selectShopcartBs(Integer userId);
	
	PtShopcart selectByPs(PtShopcart ps);
}