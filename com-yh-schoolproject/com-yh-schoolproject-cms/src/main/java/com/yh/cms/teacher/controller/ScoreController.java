package com.yh.cms.teacher.controller;

import java.util.Date;
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

import com.yh.api.service.teacher.CclassService;
import com.yh.api.service.teacher.CourseService;
import com.yh.api.service.teacher.ScoreService;
import com.yh.api.service.teacher.StudentService;
import com.yh.model.page.PageModel;
import com.yh.model.teacher.CclassModel;
import com.yh.model.teacher.CourseModel;
import com.yh.model.teacher.ScoreModel;
import com.yh.model.teacher.StudentModel;


/**
 * 成绩控制器
 * */

@Controller //此注解标识这是一个控制器
@RequestMapping("/score")
public class ScoreController {

	@Autowired
	private ScoreService scoreService;
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private CclassService cclassService;
	
	@Autowired
	private CourseService courseService;
	
	/** 查询成绩列表  * */
	@RequestMapping("queryScoreList")
	public ModelAndView queryScoreList(PageModel page,ScoreModel score){
		PageModel pages=scoreService.queryScoreList(page, score);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("score", score);
		map.put("page", pages);
		return new ModelAndView("teacher/score_list","map",map);
	}
	

	/** 成绩删除* */
	@RequestMapping("deleteScore")
	public ModelAndView deleteScore(PageModel page,ScoreModel score){
		scoreService.deleteScore(score);
		return queryScoreList(page,new ScoreModel());
	}
	
	/** 批量成绩删除  * */
	@RequestMapping("/deleteManyScoreById")
	public ModelAndView deleteManyScoreById(PageModel<T> page, ScoreModel score) {
		String arr[] = score.getScoreIds();
		for(int a = 0;a<arr.length;a++){
			String xString = arr[a];
			score.setScoreId(xString);
			scoreService.deleteScore(score);
		}
		
		return queryScoreList(page, new ScoreModel());
	}
	
	/** 成绩添加修改之前* */
	@RequestMapping("bfAddOrUpdate")
	public ModelAndView bfAddOrUpdate(String scoreId){
		ScoreModel sm = new ScoreModel();
		if(StringUtils.isNotEmpty(scoreId)){
			sm = scoreService.queryScoreById(scoreId);
		}
		//查询出所有学生返回至添加页面
		List<StudentModel> stum = studentService.queryList();
		//查询出所有班级返回至添加页面
		List<CclassModel> cm = cclassService.queryList();
		//查询出所有班级返回至添加页面
		List<CourseModel> coursemodel = courseService.queryList();
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("score", sm);
		resultMap.put("student", stum);
		resultMap.put("cclass", cm);
		resultMap.put("coursemodel", coursemodel);
		return new ModelAndView("teacher/score_addOrUpdate","result",resultMap);
		
	}
	
	/** 成绩添加修改* */
	@RequestMapping("addOrUpdate")
	public ModelAndView AddOrUpdate(PageModel page,ScoreModel score){
		if(!StringUtils.isEmpty(score.getScoreId())){
			scoreService.updataScore(score);
		}else{
			score.setScoreId(UUID.randomUUID()+"");
			score.setFlagDel(0);
			score.setState(0);
			scoreService.addScore(score);
			String scoreid = score.getScoreId();
			
			Map<String,String> map = new HashMap<String, String>();
			map.put("scoreId", scoreid);
	  }
		return queryScoreList(page,new ScoreModel());
	}
	
}
