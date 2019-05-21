package com.yh.ws.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yh.api.service.StudentNewsService;
import com.yh.model.page.PageModel;
import com.yh.model.student.StudentNewsModel;
import com.yh.model.sys.DicModel;
import com.yh.ws.mapper.DicMapper;
import com.yh.ws.mapper.StudentNewsMapper;


@Service("studentNewsService")
public class StudentNewsServiceImpl implements StudentNewsService {

	
	@Autowired
	private  StudentNewsMapper stuNewsMapper;
	
	@Override
	public PageModel queryStuNewsList(PageModel page, StudentNewsModel snm) {
		
		Map<String, Object> map = new HashMap<String, Object>();

		int dataCount = stuNewsMapper.queryStuNewsDataCount(snm);
		if (dataCount != 0) {
			page.setDataCount(dataCount);
		}
		page.setPageCount(page.getDataCount() % page.getPageSize() > 0 ? page.getDataCount() / page.getPageSize() + 1
				: page.getDataCount() / page.getPageSize());
		page.setPageIndex((page.getPageNow() - 1) * page.getPageSize());

		map.put("snms", snm);
		map.put("page", page);

		List<StudentNewsModel> tlist = stuNewsMapper.queryStuNewsList(map);
		page.setList(tlist);
		return page;
	}

	@Override
	public void addNews(StudentNewsModel snm) {
		// TODO Auto-generated method stub

	}

	

}
