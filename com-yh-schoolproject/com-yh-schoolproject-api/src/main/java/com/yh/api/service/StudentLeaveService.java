
package com.yh.api.service;

import java.util.List;
import java.util.Map;

import com.yh.model.page.PageModel;
import com.yh.model.student.StudentLeaveModel;
import com.yh.model.sys.AccountModel;

/**
 * 学生功能接口
 * */
public interface StudentLeaveService {
	//查询学生请假列表，和分页
	public PageModel querystuLeaveList(PageModel page,StudentLeaveModel stuLeave);
  
    /** 学生添加请假 */
	public void save(StudentLeaveModel stuLeave);
    //学生请假修改
	public  void update(StudentLeaveModel stuLeave);
    //学生请假关联老师表方法
	public void stuLeaveBindteacher(Map<String, String> map);
   //学生请假修改通过查询ID来修改的方法
	public StudentLeaveModel queryStuLeaveById(String sleaveId);
   //学生请假审批接口
	public PageModel queryLists(PageModel page,StudentLeaveModel stuLeave);
	//学生请假审批同意接口
	public void adopt(StudentLeaveModel stuLeave);
	//学生请假不通过接口
	public void noadopt(StudentLeaveModel stuLeave);
}