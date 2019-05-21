package com.yh.api.service;

import java.util.List;
import java.util.Map;

import com.yh.model.page.PageModel;
import com.yh.model.student.StuVoteModel;

public interface StuVoteService {

	//查询投票列表
	public PageModel queryVoteList(PageModel page,StuVoteModel teaLeave);

	//根据投票ID查询进行删除或修改
	public StuVoteModel queryVoteById(String voteId);


	/*添加*/
	public int addOrUpadate(StuVoteModel vote, String[] midArray);
	
	//添加
    public void add(StuVoteModel vote);
		
	
	/*权限关联登录*/
	public void voteBindAccount(Map<String, String> String);
}
