package com.yh.api.service;

import java.util.List;
import com.yh.model.page.PageModel;
import com.yh.model.sys.DicModel;

public interface DicService {
	
	//字典列表分页接口
	public PageModel queryDicList(PageModel page, DicModel dic);
	
	/*添加*/
	public void addDic(DicModel dic);

	/*删除*/
	public void deleteDicById(DicModel dic);
	
	//批量删除
	public void deleteManyDicById(DicModel dic);

	/** 学生请假关联老师查询老师*/
	public List<DicModel> queryStuLeaveList();
	
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
