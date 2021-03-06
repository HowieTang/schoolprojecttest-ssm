package com.yh.ws.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yh.api.service.StudentLeaveService;
import com.yh.model.page.PageModel;
import com.yh.model.student.StudentLeaveModel;
import com.yh.model.sys.AccountModel;
import com.yh.ws.mapper.StudentLeaveMapper;
/**
 * 学生实现增删改查的数据库操作
 * */
@Service("studentLeaveService")
public  class StudentLeaveServiceImpl implements StudentLeaveService {
	
	@Autowired
	private StudentLeaveMapper studentLeaveMapper;
	
	//学生请假列表查询
	@Override
	public PageModel querystuLeaveList(PageModel page, StudentLeaveModel stuLeave){
		
       Map<String, Object> map=new HashMap<String, Object>();
		
		int dataCount=studentLeaveMapper.queryDataCount(stuLeave);
		if(dataCount!=0){
			page.setDataCount(dataCount);
		   }
		page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
		page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
	
		map.put("stuLeave", stuLeave);
		map.put("page", page);
		
		List<StudentLeaveModel> ulist=studentLeaveMapper.queryStuLeaveList(map);
		page.setList(ulist);
		return page;
	}
	//学生请假添加实现
	@Override
	public void save(StudentLeaveModel stuLeave) {
		studentLeaveMapper.save(stuLeave);
	}
	//学生请假修改实现
	@Override
	public void update(StudentLeaveModel stuLeave) {
		studentLeaveMapper.update(stuLeave);
	}
	 //学生请假关联老师接口实现
	@Override
	public void stuLeaveBindteacher(Map<String, String> map) {
		studentLeaveMapper.stuLeaveBindteacher(map);
	}
	  //查询学生请假表ID实现
	@Override
	public StudentLeaveModel queryStuLeaveById(String sleaveId) {
		return studentLeaveMapper.queryStuLeaveById(sleaveId);
	}
	
	//学生请假审批实现
	@Override
	public PageModel queryLists(PageModel page,StudentLeaveModel stuLeave) {
		  Map<String, Object> map=new HashMap<String, Object>();
			
			int dataCount=studentLeaveMapper.queryDataCount(stuLeave);
			if(dataCount!=0){
				page.setDataCount(dataCount);
			   }
			page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
			page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
		
			map.put("stuLeave", stuLeave);
			map.put("page", page);
			
			List<StudentLeaveModel> ulist=studentLeaveMapper.queryLists(map);
			page.setList(ulist);
			return page;
	}
	@Override
	public void adopt(StudentLeaveModel stuLeave) {
		 studentLeaveMapper.adopt(stuLeave);
	}
	@Override
	public void noadopt(StudentLeaveModel stuLeave) {
		studentLeaveMapper.noadopt(stuLeave);
	}
}
