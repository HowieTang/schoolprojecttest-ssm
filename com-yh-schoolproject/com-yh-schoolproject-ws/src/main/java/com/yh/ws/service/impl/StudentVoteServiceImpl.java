package com.yh.ws.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.alibaba.druid.util.StringUtils;
import com.yh.api.service.StuVoteService;
import com.yh.model.page.PageModel;
import com.yh.model.student.StuVoteModel;
import com.yh.ws.mapper.AccountMapper;
import com.yh.ws.mapper.StudentVoteMapper;


@Service("stuVoteService")
public class StudentVoteServiceImpl implements StuVoteService {

	@Resource
	private StudentVoteMapper studentVoteMapper;
	@Resource
	private AccountMapper accountMapper;
	

	//查询投票列表
	@Override
	public PageModel queryVoteList(PageModel page, StuVoteModel vote) {
        Map<String, Object> map=new HashMap<String, Object>();
		
		int dataCount = studentVoteMapper.queryDataCount(vote);
		if(dataCount!=0){
			page.setDataCount(dataCount);
		   }
		page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
		page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
	
		map.put("vote", vote);
		map.put("page", page);
		
		List<StuVoteModel> tlist = studentVoteMapper.queryVoteList(map);
		page.setList(tlist);
		return page;
	}

	@Override
	public StuVoteModel queryVoteById(String voteId) {
		return studentVoteMapper.queryVoteById(voteId);
	}
	
	@Override
	public int addOrUpadate(StuVoteModel vote, String[] midArray) {
		int i=0;
		if(StringUtils.isEmpty(vote.getVoteId())){
			vote.setVoteId(UUID.randomUUID()+"");
			vote.setVoteEtime(new Date());
			vote.setVoteEtime(new Date());
			vote.setFlagDel(1);
			i = studentVoteMapper.add(vote);
			
			Map<String, String> map = new HashMap<String, String>();
			map.put("voteid", vote.getVoteId());
			for(String voteTypeId :midArray){
				map.put("id", UUID.randomUUID()+"");
				map.put("voteaccountId", voteTypeId);
				studentVoteMapper.voteBindAccount(map);
			}
			
		}else{
			vote.setVoteEtime(new Date());
			i= studentVoteMapper.update(vote);
		}
		return i;
		
	}

	@Override
	public void voteBindAccount(Map<String, String> String) {
		accountMapper.voteBindAccount(String);
		
	}

	@Override
	public void add(StuVoteModel vote) {
		studentVoteMapper.add(vote);
		
	}
		
}
