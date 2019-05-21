package com.yh.api.service;

import com.yh.model.page.PageModel;
import com.yh.model.student.StudentNewsModel;
import com.yh.model.student.StudentNotesModel;

public interface StudentNotesService {
	
	//笔记列表接口
	public PageModel queryStuNotesList(PageModel page, StudentNotesModel snm);

}
