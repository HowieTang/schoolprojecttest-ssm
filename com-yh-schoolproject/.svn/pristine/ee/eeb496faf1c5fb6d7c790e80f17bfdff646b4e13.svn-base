package com.yh.cms.student.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yh.api.service.StudentNotesService;
import com.yh.model.page.PageModel;
import com.yh.model.student.StudentNewsModel;
import com.yh.model.student.StudentNotesModel;

@Controller //此注解标识这是一个控制器
@RequestMapping("/stunotes")
public class StudentNotesController {
	
	@Autowired
	private StudentNotesService stunotesService;
	
	@RequestMapping("queryStuNotesList")
	public ModelAndView queryNotesList(PageModel<T> page, StudentNotesModel snm) {
		PageModel<T> pages = stunotesService.queryStuNotesList(page, snm);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("snms", snm);
		map.put("page", pages);
		return new ModelAndView("student/stuNotesList", "map", map);
	}
}
