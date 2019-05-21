package com.yh.ws.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.dubbo.common.utils.StringUtils;

import com.yh.api.service.PowerService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.PowerModel;
import com.yh.ws.mapper.PowerMapper;

/**
 * 系统管理权限实现增删改查的数据库操作
 * */
@Service("powerService")
public class PowerServiceImpl implements PowerService {

	@Autowired
	private PowerMapper powerMapper;

	/** 权限列表分页接口实现 * */
	@Override
	public PageModel queryPowerList(PageModel page, PowerModel power) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int dataCount=powerMapper.queryPowerDataCount(power);
		if(dataCount!=0){
			page.setDataCount(dataCount);
		}
		page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
		page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
	
		map.put("power", power);
		map.put("page", page);
		
		List<PowerModel> plist=powerMapper.queryPowerList(map);
		page.setList(plist);
		return page;
	}

	/** 权限删除接口实现 * */
	@Override
	public void deleteById(PowerModel power) {
		powerMapper.deleteById(power);
	}

	/** 权限添加修改接口实现 * */
	@Override
	public int addOrUpadate(PowerModel power, String[] mids) {
		int i=0;
		if(StringUtils.isEmpty(power.getPowerId())){
			power.setPowerId(UUID.randomUUID()+"");
			power.setCreateTime(new Date());
			power.setUpdateTime(new Date());
			power.setFlagDel(0);
			i = powerMapper.addPower(power);
			
			Map<String, String> map = new HashMap<String, String>();
			map.put("pid", power.getPowerId());
			for(String mid :mids){
				map.put("id", UUID.randomUUID()+"");
				map.put("mid", mid);
				powerMapper.powerBindMenu(map);
			}
		}else{
			power.setUpdateTime(new Date());
			i= powerMapper.update(power);
		}
		return i;
	}
	
	/** 根据ID查询权限列表接口实现 * */
	@Override
	public PowerModel queryPowerById(String powerId) {
		return powerMapper.queryPowerById(powerId);
	}

   
	/** 角色添加权限查询权限列表 实现* */
	@Override
	public List<PowerModel> queryList() {
		return powerMapper.queryList();
	}

	/** 权限添加菜单接口实现 * */
	@Override
	public void powerBindMenu(Map<String, String> map) {
		powerMapper.powerBindMenu(map);
	}

}
