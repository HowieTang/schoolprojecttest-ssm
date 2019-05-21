package com.yh.api.service.teacher;

import java.util.List;
import java.util.Map;

import com.yh.model.page.PageModel;
import com.yh.model.sys.DicModel;
import com.yh.model.teacher.CircularModel;

/**
 * 公告功能接口
 * @param <T>
 * */
public interface CircularService {
	
	/**公告列表接口 * */
	public PageModel queryCircularList(PageModel page,CircularModel circular);
	
	/** 公告删除接口 * */
	public void deleteCircular(CircularModel circular);
	
	/** 公告添加接口 * */
	public void addCircular(CircularModel circular);
	
	/** 公告修改接口 * */
	//public void updataCircular(CircularModel circular);

	/** 根据ID查询公告列表接口 * */
	public CircularModel queryCircularById(String circularId);
	

}
