package com.yh.ws.service.impl.teacher;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.UUIDEditor;
import org.springframework.stereotype.Service;

import com.yh.api.service.teacher.LeaveService;
import com.yh.model.page.PageModel;
import com.yh.model.teacher.LeaveModel;
import com.yh.ws.mapper.teacher.LeaveMapper;

@Service("leaveService")
public class LeaveServiceImpl implements LeaveService {

	@Autowired
	private LeaveMapper leaveMapper;
	
	@Override
	public PageModel queryLeaveList(PageModel page, LeaveModel leave) {
		Map<String, Object> map=new HashMap<String, Object>();
		
		int dataCount=leaveMapper.queryDataCount(leave);
		if(dataCount!=0){
			page.setDataCount(dataCount);
		}
		page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
		page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
	
		map.put("leave", leave);
		map.put("page", page);
		
		List<LeaveModel> ulist=leaveMapper.queryLeaveList(map);
		page.setList(ulist);
		return page;
	}

	@Override
	public void addLeave(LeaveModel leave) {
	/*	leave.setTleaveId(UUID.randomUUID().toString());
		leave.setFlagDel(0);
		leave.setState(0);*/
		leaveMapper.addLeave(leave);
	}

	@Override
	public void updataLeave(LeaveModel leave) {
		leaveMapper.updataLeave(leave);		
	}

	@Override
	public LeaveModel queryLeaveById(String tleaveId) {
		return leaveMapper.queryLeaveById(tleaveId);
	}

	@Override
	public void deleteLeaveById(LeaveModel leave) {
		leaveMapper.deleteLeaveById(leave);		
	}

	
}
