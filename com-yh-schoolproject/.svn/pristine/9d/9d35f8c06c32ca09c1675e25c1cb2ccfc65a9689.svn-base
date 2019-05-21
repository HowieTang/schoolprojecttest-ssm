package com.yh.ws.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yh.api.service.StudentNotesService;
import com.yh.model.page.PageModel;
import com.yh.model.student.StudentNewsModel;
import com.yh.model.student.StudentNotesModel;
import com.yh.ws.mapper.StudentNotesMapper;


@Service("studentNotesService")
public class StudentNotesServiceImpl implements StudentNotesService {

	@Autowired
	private StudentNotesMapper stuNoetsMapper;

	@Override
	public PageModel queryStuNotesList(PageModel page, StudentNotesModel snm) {
		Map<String, Object> map = new HashMap<String, Object>();

		int dataCount = stuNoetsMapper.queryStuNotesDataCount(snm);
		if (dataCount != 0) {
			page.setDataCount(dataCount);
		}
		page.setPageCount(page.getDataCount() % page.getPageSize() > 0 ? page.getDataCount() / page.getPageSize() + 1
				: page.getDataCount() / page.getPageSize());
		page.setPageIndex((page.getPageNow() - 1) * page.getPageSize());

		map.put("snms", snm);
		map.put("page", page);

		List<StudentNotesModel> tlist = stuNoetsMapper.queryStuNotesList(map);
		page.setList(tlist);
		return page;
	}

	

}
