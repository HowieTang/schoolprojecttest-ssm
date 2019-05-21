package com.yh.ws.mapper.teacher;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.sys.DicModel;
import com.yh.model.teacher.CircularModel;


/**
 * 公告增删改查接口
 * */
@Repository
public interface CircularMapper {
	
	/** 公告列表接口 * */
	public List<CircularModel> queryCircularList(Map<String, Object> map);
	
	/** 公告列表分页接口 * */
	public Integer queryDataCount(CircularModel circular);
	
	/** 公告删除接口 * */
	public void deleteCircular(CircularModel circular);
	
	/** 公告添加接口 * */
	public void addCircular(CircularModel circular);
	
	/** 公告修改接口 * */
	//public void updataCircular(CircularModel circular);

	/** 根据ID查询公告列表接口 * */
	public CircularModel queryCircularById(String circularId);
	

}
