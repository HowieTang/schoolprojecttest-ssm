package com.yh.ws.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yh.api.service.DicService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.DicModel;
import com.yh.ws.mapper.DicMapper;

/**
 * 系统管理实现增删改查的数据库操作
 */
@Service("sysService")
public class DicServiceImpl implements DicService {

	@Autowired
	private DicMapper sysMapper;

	/** 数据字典列表分页接口实现 * */
	@Override
	@SuppressWarnings("all")
	public PageModel queryDicList(PageModel page, DicModel dic) {
		Map<String, Object> map = new HashMap<String, Object>();

		int dataCount = sysMapper.queryDicDataCount(dic);
		if (dataCount != 0) {
			page.setDataCount(dataCount);
		}
		page.setPageCount(page.getDataCount() % page.getPageSize() > 0 ? page.getDataCount() / page.getPageSize() + 1
				: page.getDataCount() / page.getPageSize());
		page.setPageIndex((page.getPageNow() - 1) * page.getPageSize());

		map.put("dic", dic);
		map.put("page", page);

		List<DicModel> tlist = sysMapper.queryDicList(map);
		page.setList(tlist);
		return page;
	}

		@Override
		public void addDic(DicModel dic) {
			dic.setDid(UUID.randomUUID().toString());
			sysMapper.addDic(dic);
			
		}
	
		@Override
		public void deleteDicById(DicModel dic) {
			sysMapper.deleteDicById(dic);
			
		}

		@Override
		public List<DicModel> queryStuLeaveList() {
			
			return sysMapper.queryStuLeaveList();
		}

		/** 添加公告选择类型接口实现 * */
		@Override
		public List<DicModel> queryCircularList() {
			return sysMapper.queryCircularList();
		}

		@Override
		public void deleteManyDicById(DicModel dic) {
			// TODO Auto-generated method stub
			
		}

		/** 添加教学笔记选择类型接口实现 * */
		@Override
		public List<DicModel> queryTeacherNotesList() {
			return sysMapper.queryTeacherNotesList();
		}
		
		/** 添加新闻类型接口实现 * */
		@Override
		public List<DicModel> queryNewsType() {
			return sysMapper.queryNewsType();
		}
		
		/** 添加请假类型接口实现 * */
		@Override
		public List<DicModel> queryLeaveList() {
			return sysMapper.queryLeaveList();
		}
		
		/** 添加职务类型接口实现 * */

		@Override
		public List<DicModel> querybusinessList() {
			return sysMapper.querybusinessList();
		}

		
		
	


}
