package com.yh.ws.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.yh.api.service.NewsService;
import com.yh.model.news.NewsModel;
import com.yh.model.news.NewsNoticeModel;
import com.yh.model.page.PageModel;
import com.yh.model.teacher.TeacherNotesModel;
import com.yh.ws.mapper.NewsMapper;
/**
 * 新闻实现增删改查的数据库操作
 * */
@Service("newsService")
public class NewsServiceImpl implements NewsService {
	
	@Resource
	private NewsMapper newsMapper;
	
	//新闻列表
	@Override
	public PageModel queryNewsList(PageModel page, NewsModel newsModel) {
		Map<String, Object> map = new HashMap<String,Object>();
		
		int dataCount = newsMapper.queryDataCount(newsModel);
		if (dataCount != 0) {
			page.setDataCount(dataCount);
		}
			page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
			page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
			
			map.put("newsModel", newsModel);
			map.put("page", page);
			
			List<NewsModel> list = newsMapper.queryNewsList(map);
			page.setList(list);
			return page;
	}
	
	//新闻删除
	@Override
	public void deleteNewsById(NewsModel newsModel) {
		newsMapper.deleteNewsById(newsModel);
	}
	
	//新闻添加
	@Override
	public void addNews(NewsModel newsModel) {
		newsModel.setNews_id(UUID.randomUUID()+"");
		newsModel.setFlag_del(0);
		newsModel.setCreate_time(new Date());
		newsMapper.addNews(newsModel);
	}
	
	//新闻修改
	@Override
	public void updateNews(NewsModel newsModel) {
		newsMapper.updateNews(newsModel);
	}
	
	//根据id查询新闻列表接口
	@Override
	public NewsModel queryNewsById(String news_id) {
		return newsMapper.queryNewsById(news_id);
	}
	
	//新闻投稿审核列表
	@Override
	public PageModel queryNewsFeedList(PageModel page, NewsModel newsModel) {
		Map<String, Object> map = new HashMap<String,Object>();
		
		int dataCount = newsMapper.queryDateCountss(newsModel);
		if (dataCount != 0) {
			page.setDataCount(dataCount);
		}
			page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
			page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
			
			map.put("newsModel", newsModel);
			map.put("page", page);
			
			List<NewsModel> list = newsMapper.queryNewsFeedList(map);
			page.setList(list);
			return page;
	}
	//投稿审核通过
	@Override
	public void updateNewsYes(NewsModel newsModel) {
		newsMapper.updateNewsYes(newsModel);
	}
	
	//投稿审核未通过
	@Override
	public void updateNewsNo(NewsModel newsModel) {
		newsMapper.updateNewsNo(newsModel);
	}
		
	//新闻页面渲染 校园热点
	@Override
	public List<NewsModel> queryCampusTrends() {
		return newsMapper.queryCampusTrends();
	}
	
	//新闻页面渲染 校园前沿
	@Override
	public List<NewsModel> queryCampusFrontier() {
		return newsMapper.queryCampusFrontier();
	}
	
	//新闻页面渲染 教师笔记
	@Override
	public List<NewsModel> queryTeacherNotes() {
		return newsMapper.queryTeacherNotes();
	}
	
	//新闻页面渲染 学生笔记
	@Override
	public List<NewsModel> queryStudentNotes() {
		return newsMapper.queryStudentNotes();
	}
	
	//新闻页面渲染 校园通告
	@Override
	public List<NewsModel> queryCampusNotice() {
		return newsMapper.queryCampusNotice();
	}
	
	//新闻页面渲染 校园成绩通告
	@Override
	public List<NewsModel> queryCampusGrades() {
		return newsMapper.queryCampusGrades();
	}
	
	//查询所有校园热点新闻
	@Override
	public List<NewsModel> AllCampusTrends() {
		return newsMapper.AllCampusTrends();
	}
	
	//点赞
	@Override
	public void addNumber(NewsModel newsModel) {
		newsMapper.addNumber(newsModel);
	}
	
	//浏览量
	@Override
	public void updatePageView(NewsModel newsModel) {
		newsMapper.updatePageView(newsModel);
	}
	
	//新闻轮播公告
	@Override
	public List<NewsNoticeModel> queryNoticeList() {
		return newsMapper.queryNoticeList();
	}
	
	
	/** 教师笔记列表接口实现 * */
	@Override
	public PageModel queryTeacherNotesList(PageModel page, NewsModel newsModel) {
    Map<String, Object> map = new HashMap<String,Object>();
		
		int dataCount = newsMapper.queryDataCounts(newsModel);
		if (dataCount != 0) {
			page.setDataCount(dataCount);
		}
			page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
			page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
			
			map.put("newsModel", newsModel);
			map.put("page", page);
			
			List<NewsModel> tlist = newsMapper.queryTeacherNotesList(map);
			page.setList(tlist);
			return page;
	}

	/** 教师笔记添加接口实现 * */
	@Override
	public void addTeacherNotes(NewsModel newsModel) {
		newsModel.setNews_id(UUID.randomUUID().toString());
		newsModel.setFlag_del(0);
		newsMapper.addTeacherNotes(newsModel);
	}
	


	/** 教师笔记删除接口实现* */
/*	@Override
	public void deleteTeacherNotes(NewsModel newsModel) {
		newsMapper.deleteTeacherNotes(newsModel);
	}
	*/

}
