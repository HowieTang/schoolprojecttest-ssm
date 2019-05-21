package com.yh.ws.mapper.teacher;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.teacher.ScoreModel;



/**
 * 成绩增删改查接口
 * */
@Repository
public interface ScoreMapper {
	
	/** 成绩列表接口 * */
	public List<ScoreModel> queryScoreList(Map<String, Object> map);
	
	/** 成绩列表分页接口 * */
	public Integer queryDataCount(ScoreModel score);
	
	/** 成绩删除接口 * */
	public void deleteScore(ScoreModel score);
	
	/** 成绩添加接口 * */
	public void addScore(ScoreModel score);
	
	/** 成绩修改接口 * */
	public void updataScore(ScoreModel score);

	/** 根据ID查询成绩列表接口 * */
	public ScoreModel queryScoreById(String scoreId);
	
	/** 成绩绑定学生接口 * */
	//public void scoreBindStudent(Map<String, String> map);
	
	/** 成绩绑定班级接口 * */
	//public void scoreBindCclass(Map<String, String> map);
	
	/** 成绩绑定课程接口 * */
	//public void scoreBindCourse(Map<String, String> map);

}
