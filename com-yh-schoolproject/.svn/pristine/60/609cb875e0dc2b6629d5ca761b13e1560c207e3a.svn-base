package com.yh.cms.teacher.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yh.api.service.DicService;
import com.yh.api.service.teacher.LeaveService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.DicModel;
import com.yh.model.teacher.CclassModel;
import com.yh.model.teacher.CourseModel;
import com.yh.model.teacher.LeaveModel;

@Controller //此注解标识这是一个控制器
@RequestMapping("/leave")
public class LeaveController {

		//面向接口思想引入leaveService接口
		@Autowired
		private LeaveService leaveService;
		
		@Autowired
		private DicService dicService;
		
		
		//查询教师请假列表加分页
		@RequestMapping("queryLeaveList")
		public ModelAndView queryLeaveList(PageModel page,LeaveModel leave){
			//获取LeaveService接口中查询列表方法
			PageModel pages=leaveService.queryLeaveList(page,leave);
			//因传了2个参数需要用map集合接收所以new一个map集合
			Map<String, Object> map=new HashMap<String, Object>();
			//添加参数
			map.put("leave", leave);
			map.put("page", pages);
			//返回页面
			return new ModelAndView("teacher/leaveList","map",map);
		}
		@RequestMapping("bfaddOrUpdate")
		public ModelAndView bfaddLeave(String tleaveId){
			LeaveModel lm = new LeaveModel();
			if(StringUtils.isNotEmpty(tleaveId)){
				lm = leaveService.queryLeaveById(tleaveId);
			}
			//查询出公告类型返回至添加页面
			List<DicModel> dm = dicService.queryLeaveList();
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("leave", lm);
			result.put("dm", dm);
			return new ModelAndView("teacher/leaveAddOrUpdate","result",result);
		}
		
		@RequestMapping("addOrUpdate")
		public ModelAndView addLeave(PageModel<T> page,LeaveModel leave){
			if(!StringUtils.isEmpty(leave.getTleaveId())){
				leaveService.updataLeave(leave);
			}else{
				leave.setTleaveId(UUID.randomUUID()+"");
				leaveService.addLeave(leave);
				String tleaveId = leave.getTleaveId();
				Map<String,String> map = new HashMap<String, String>();
				map.put("tleaveId", tleaveId);
		  }
			return queryLeaveList(page,new LeaveModel());
		}
		
		@RequestMapping("/deleteLeaveById")
		public ModelAndView deleteCourseById(PageModel<T> page,LeaveModel leave){
			leaveService.deleteLeaveById(leave);;
			return queryLeaveList(page,new LeaveModel());
		}
		
		
		//批量删除
		@RequestMapping("/deleteManyLeaveById")
		public ModelAndView deleteManyTeacherById(PageModel<T> page,LeaveModel leave) {
			String arr[] = leave.getLids();
			for(int a = 0;a<arr.length;a++){
				String xString = arr[a];
				leave.setTleaveId(xString);
				leaveService.deleteLeaveById(leave);
			}
			return queryLeaveList(page,new LeaveModel());
		}
}
