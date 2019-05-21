package com.yh.ws.service.impl.teacher;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.dubbo.common.utils.StringUtils;
import com.yh.api.service.teacher.ScoreService;
import com.yh.model.page.PageModel;
import com.yh.model.teacher.ScoreModel;
import com.yh.ws.mapper.teacher.ScoreMapper;

/**
 * 成绩实现增删改查的数据库操作
 * */
@Service("scoreService")
public class ScoreServiceImpl implements ScoreService {

	@Autowired
	private ScoreMapper scoreMapper;
	
	/** 成绩列表分页接口实现 * */
	@Override
	public PageModel queryScoreList(PageModel page, ScoreModel score) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int dataCount=scoreMapper.queryDataCount(score);
		if(dataCount!=0){
			page.setDataCount(dataCount);
		}
		page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
		page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
	
		map.put("score", score);
		map.put("page", page);
		
		List<ScoreModel> slist=scoreMapper.queryScoreList(map);
		page.setList(slist);
		return page;
	}

	/** 成绩列表删除接口实现 * */
	@Override
	public void deleteScore(ScoreModel score) {
		scoreMapper.deleteScore(score);
	}

	/** 成绩列表添加接口实现 * */
	@Override
	public void addScore(ScoreModel score) {
		/*for(String student:score.getSid()){
			score.setStudentId(student);
		}*/
		scoreMapper.addScore(score);
		/*String scoreId = score.getScoreId();
		Map<String,String> map = new HashMap<>();
		map.put("scoreId", scoreId);
		List<String> sid = score.getSid();
		for(String studentid:sid){
			map.put("id",UUID.randomUUID()+"");
			map.put("studentid",studentid);
			scoreMapper.scoreBindStudent(map);
		}*/
	}

	/** 成绩列表修改接口实现 * */
	@Override
	public void updataScore(ScoreModel score) {
		scoreMapper.updataScore(score);
	}

	/** 根据ID查询成绩列表接口实现 * */
	@Override
	public ScoreModel queryScoreById(String scoreId) {
		return scoreMapper.queryScoreById(scoreId);
	}

	/** 成绩绑定学生接口* */
	/*@Override
	public void scoreBindStudent(Map<String, String> map) {
		scoreMapper.scoreBindStudent(map);
	}*/
}
