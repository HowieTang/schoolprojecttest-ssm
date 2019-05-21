package com.yh.ws.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.sys.DicModel;
import com.yh.model.teacher.TeacherModel;

/**
 * 词典管理增删改查接口
 * */
@Repository
public interface DicMapper {
	
	/** 数据字典列表分页接口 * */
	public Integer queryDicDataCount(DicModel dic);
	/** 数据字典列表接口 * */
	public List<DicModel> queryDicList(Map<String, Object> map);
	
	/*添加*/
	public void addDic(DicModel dic);

	public List<DicModel> queryStuLeaveList();
	/*删除*/
	public void deleteDicById(DicModel dic);
			
	/** 添加公告选择类型接口 * */
	public List<DicModel> queryCircularList();
	
	/** 添加教学笔记选择类型接口 * */
	public List<DicModel> queryTeacherNotesList();
	
	/** 添加新闻类型接口 * */
	public List<DicModel> queryNewsType();

	
	/** 添加请假选择类型接口 * */
	public List<DicModel> queryLeaveList();

	/** 添加职务选择类型接口 * */
	public List<DicModel> querybusinessList();
}
