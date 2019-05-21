package com.yh.ws.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.student.StuVoteModel;



@Repository
public interface StudentVoteMapper {

	//查询投票列表
	public List<StuVoteModel> queryVoteList(Map<String, Object> map);

	//查询投票总条数
	public Integer queryDataCount(StuVoteModel vote);
	
	//根据投票ID查询进行删除或修改
	public  StuVoteModel queryVoteById(String voteId);
    //添加
	public int add(StuVoteModel vote);

	public int update(StuVoteModel vote);
	
	//关联account
	public void voteBindAccount(Map<String, String> String);

	

}

