package com.yh.api.service.teacher;


import com.yh.model.page.PageModel;
import com.yh.model.teacher.LeaveModel;

public interface LeaveService {
	
		//查询请假列表，分页
		public PageModel queryLeaveList(PageModel page,LeaveModel leave);
	  
		/** 请假添加接口 * */
		public void addLeave(LeaveModel leave);
		
		/** 课程修改接口 * */
		public void updataLeave(LeaveModel leave);

		/** 根据ID查询公告列表接口 * */
		public LeaveModel queryLeaveById(String tleaveId);
		/*删除*/
		public void deleteLeaveById(LeaveModel leave);
}
