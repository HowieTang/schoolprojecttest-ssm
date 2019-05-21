package com.yh.ws.service.impl.teacher;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.dubbo.common.utils.StringUtils;
import com.yh.api.service.teacher.CircularService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.DicModel;
import com.yh.model.teacher.CircularModel;
import com.yh.ws.mapper.teacher.CircularMapper;

/**
 * 公告实现增删改查的数据库操作
 * */
@Service("circularService")
public class CircularServiceImpl implements CircularService {

	@Autowired
	private CircularMapper circularMapper;
	
	/** 公告列表分页接口实现 * */
	@Override
	public PageModel queryCircularList(PageModel page, CircularModel circular) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int dataCount=circularMapper.queryDataCount(circular);
		if(dataCount!=0){
			page.setDataCount(dataCount);
		}
		page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
		page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
	
		map.put("circular", circular);
		map.put("page", page);
		
		List<CircularModel> clist=circularMapper.queryCircularList(map);
		page.setList(clist);
		return page;
	}

	/** 公告列表删除接口实现 * */
	@Override
	public void deleteCircular(CircularModel circular) {
		circularMapper.deleteCircular(circular);
	}

	/** 公告列表添加接口实现 * */
	@Override
	public void addCircular(CircularModel circular) {
		circular.setCircularId(UUID.randomUUID()+"");
		circular.setFlagDel(0);
		circular.setState(0);
		circular.setCreateTime(new Date());
		circular.setSubmitTime(new Date());
		circularMapper.addCircular(circular);
	}

	/** 公告列表修改接口实现 * */
	/*@Override
	public void updataCircular(CircularModel circular) {
		circular.setUpdateTime(new Date());
		circular.setSubmitTime(new Date());
		circularMapper.updataCircular(circular);	
	}*/

	/** 根据ID查询公告列表接口实现 * */
	@Override
	public CircularModel queryCircularById(String circularId) {
		return circularMapper.queryCircularById(circularId);
	}

}
