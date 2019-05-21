package com.yh.cms.teacher.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.dubbo.common.json.JSON;
import com.yh.api.service.teacher.TeacherJournalService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.AccountModel;
import com.yh.model.sys.DicModel;
import com.yh.model.teacher.TeacherJournalModel;
import com.yh.model.teacher.TeacherModel;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * 教师日志控制器
 * */
@Controller //此注解标识这是一个控制器
@RequestMapping("/teacherjournal")
public class TeacherJournalController {

	@Autowired
	private TeacherJournalService teacherJournalService;

	
	//教师日志列表
	@RequestMapping("queryteacherJournalList")
	public ModelAndView queryteacherJournalList(){
	    return new ModelAndView("teacher/teacherjournal_list");
	}
	
	
	@RequestMapping("queryTeacherJournalList1")
	public void queryTeacherJournalList1(HttpServletResponse response){
		List<TeacherJournalModel> teacherJournal = teacherJournalService.queryteacherJournalList();
		SimpleDateFormat  sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		List<TeacherJournalModel> ms =  new ArrayList<>();
		for(TeacherJournalModel m:teacherJournal){
			if(m.getEndDate() != null)m.setEnd(sdf.format(m.getEndDate()));
			if(m.getStartDate() != null)m.setStart(sdf.format(m.getStartDate()));
			ms.add(m);
		}
		ajax(response,ms);
	}
	/**ajax 返回 */
	public void ajax(HttpServletResponse response,List<TeacherJournalModel> ms){
		 try {
		    response.setContentType("application/json");
	        response.setHeader("Pragma", "No-cache");
	        response.setHeader("Cache-Control", "no-cache");
	        response.setCharacterEncoding("UTF-8");
	        PrintWriter out= null;
			out = response.getWriter();
	        JSONArray  json = JSONArray.fromObject(ms);
	        System.out.println(json.toString());
	        out.print(json);
	        out.flush();
	        out.close();
		 } catch (IOException e) {
			 e.printStackTrace();
		}
	 }

	//添加之前
	@RequestMapping("bfaddOrUpdateJournal")
	public ModelAndView journalAdd(TeacherJournalModel journal){
		TeacherJournalModel journa = new TeacherJournalModel();
		if(StringUtils.isNotEmpty(journal.getId())){
			journa = teacherJournalService.queryJournalById(journal.getId());
		}
		Map<String, Object> result= new HashMap<>();
		result.put("journal", journal);
		return new ModelAndView("teacher/event","result",result);
	}
	//添加
	@RequestMapping("addOrUpdateJournal")
	public ModelAndView bfAddOrUpdate(TeacherJournalModel journal){
		if(StringUtils.isNotEmpty(journal.getId())){
			journal.setUpdateTime(new Date());
			journal.setFlagDel(0);
			journal.setState(0);
			teacherJournalService.updataJournal(journal);
		}else{
			journal.setId(UUID.randomUUID().toString());
			journal.setFlagDel(0);
			journal.setState(0);
			teacherJournalService.addJournal(journal);
	  }
		return queryteacherJournalList();
	}
	
	@RequestMapping("queryteacherJournalLists")
	public ModelAndView queryteacherJournalLists(){
	    return new ModelAndView("student/teacherjournal_list");
	}
	
}
