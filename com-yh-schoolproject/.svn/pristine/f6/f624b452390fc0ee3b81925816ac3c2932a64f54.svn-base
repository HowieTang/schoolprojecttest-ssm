package com.yh.cms.student.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yh.api.service.DicService;
import com.yh.api.service.NewsService;
import com.yh.api.service.StudentNewsService;
import com.yh.api.service.StudentWriteService;
import com.yh.model.news.NewsModel;
import com.yh.model.page.PageModel;
import com.yh.model.student.StudentNewsModel;
import com.yh.model.sys.DicModel;




@Controller //此注解标识这是一个控制器
@RequestMapping("/newscons")
public class StuNewsController {
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private StudentNewsService stuNewsService;
	
	@Autowired
	private DicService dicService;
	
	@RequestMapping("/bfcons")
	public ModelAndView bfaddOrUpdate(StudentNewsModel snm) {
		StudentNewsModel stm1 = new StudentNewsModel();
		List<DicModel> dm = dicService.queryNewsType();
		Map<String, Object> map = new HashMap<>();
		for(DicModel d : dm){
			System.out.println(d);
		}
		map.put("dm", dm);
		map.put("stm", stm1);
		return new ModelAndView("student/stu_News_Con","map",map);
	}
	
	

	@RequestMapping("queryStuNewsList")
	public ModelAndView queryUserList(PageModel<T> page, StudentNewsModel snm) {
		PageModel<T> pages = stuNewsService.queryStuNewsList(page, snm);
		Map<String, Object> map = new HashMap<String, Object>();
		/*byte[] arr = snm.getNewsTexts();
		String string = new String(arr);
		snm.setNewsText(string);
		*/
		
		map.put("snms", snm);
		map.put("page", pages);
		return new ModelAndView("student/stuNewsList", "map", map);
	}
	
	
	@RequestMapping("/addNews")
	public ModelAndView addOrUpdate(PageModel page,NewsModel newsModel){
		newsService.addNews(newsModel);
		return queryUserList(page, new StudentNewsModel());
	}
}
