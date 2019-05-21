package com.yh.api.service;


import java.util.Map;

import com.yh.model.page.PageModel;
import com.yh.model.student.StudentWriteModel;

public interface StudentWriteService {
	/** 查询写信列表，分页 接口*/
	public PageModel queryStuWritetList(PageModel page,StudentWriteModel stuWrite);
	/**查询account表的ID  */
	public StudentWriteModel queryStuWriteById(String writeId);
	/** 写信添加接口*/
	public void save(StudentWriteModel stuWrite);
	/** 写信删除接口 */
	public void delete(StudentWriteModel stuWrite);
	//学生私信关联老师
	public void stuWriteBindTeacher(Map<String, String> map);
	//学生私信关联学生
	public void stuWriteBindStudent(Map<String, String> map);
}
