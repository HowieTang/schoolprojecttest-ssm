package com.yh.ws.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yh.api.service.StudentWriteService;
import com.yh.model.page.PageModel;
import com.yh.model.student.StudentWriteModel;
import com.yh.ws.mapper.StudentWriteMapper;


@Service("stuWriteService")
public class StudentWriteServiceImpl implements StudentWriteService {

	@Resource
	private StudentWriteMapper studentWriteMapper;
	
	@Override
	public PageModel queryStuWritetList(PageModel page, StudentWriteModel stuWrite) {
		 Map<String, Object> map=new HashMap<String, Object>();
			
			int dataCount=studentWriteMapper.queryDataCount(stuWrite);
			if(dataCount!=0){
				page.setDataCount(dataCount);
			   }
			page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
			page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
		
			map.put("stuWrite", stuWrite);
			map.put("page", page);
			
			List<StudentWriteModel> ulist=studentWriteMapper.queryStuWritetList(map);
			page.setList(ulist);
			return page;
	}

	@Override
	public StudentWriteModel queryStuWriteById(String writeId) {
		return studentWriteMapper.queryStuWriteById(writeId);
	}

	@Override
	public void save(StudentWriteModel stuWrite) {
		studentWriteMapper.save(stuWrite);
	}

	@Override
	public void delete(StudentWriteModel stuWrite) {
		studentWriteMapper.delete(stuWrite);
	}

	@Override
	public void stuWriteBindTeacher(Map<String, String> map) {
		studentWriteMapper.stuWriteBindteacher(map);
	}

	@Override
	public void stuWriteBindStudent(Map<String, String> map) {
		studentWriteMapper.stuWriteBindstudent(map);
	}

}
