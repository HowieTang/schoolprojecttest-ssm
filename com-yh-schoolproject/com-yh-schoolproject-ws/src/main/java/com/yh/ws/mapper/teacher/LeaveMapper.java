package com.yh.ws.mapper.teacher;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.teacher.CourseModel;
import com.yh.model.teacher.LeaveModel;

@Repository
public interface LeaveMapper {

	 //查询教师请假列表
	public List<LeaveModel> queryLeaveList(Map<String, Object> map);
	
	//教师请假列表分页
	public Integer queryDataCount(LeaveModel leave);
	/** 教师添加接口 * */
	public void addLeave(LeaveModel leave);
	
	/** 修改接口 * */
	public void updataLeave(LeaveModel leave);

	/** 根据ID查询公告列表接口 * */
	public LeaveModel queryLeaveById(String tleaveId);
	
	/*删除*/
	public void deleteLeaveById(LeaveModel leave);
	
	

	
	
}
