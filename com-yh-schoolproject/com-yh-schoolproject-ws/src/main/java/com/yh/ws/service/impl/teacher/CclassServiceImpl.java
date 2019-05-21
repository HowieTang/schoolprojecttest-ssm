package com.yh.ws.service.impl.teacher;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yh.api.service.teacher.CclassService;
import com.yh.api.service.teacher.CourseService;
import com.yh.model.page.PageModel;
import com.yh.model.teacher.CclassModel;
import com.yh.model.teacher.CourseModel;
import com.yh.ws.mapper.teacher.CclassMapper;
import com.yh.ws.mapper.teacher.CourseMapper;

@Service("cclassService")
public class CclassServiceImpl implements CclassService {


	@Autowired
	private CclassMapper cclassMapper;
	
	@Override
	public PageModel queryCclassList(PageModel page, CclassModel cclass) {

		Map<String, Object> map=new HashMap<String, Object>();
		
		int dataCount=cclassMapper.queryCourseDataCount(cclass);
		if(dataCount!=0){
			page.setDataCount(dataCount);
		}
		page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
		page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
	
		map.put("cclass", cclass);
		map.put("page", page);
		
		List<CclassModel> clist=cclassMapper.queryCclassList(map);
		page.setList(clist);
		return page;
	}
	

	@Override
	public void deleteCclassById(CclassModel cclass) {
		cclassMapper.deleteCclassById(cclass);
	}

	/** 添加接口实现 * */
	@Override
	public void addCclass(CclassModel cclass) {
	/*	//获取teacherid
		for(String teacher:cclass.getTeacher()){
			cclass.setTeacherId(teacher);
		}*/
		//获取studentid
		/*for(String student:cclass.getStudent()){
			cclass.setSid(student);
		}*/
		
		/*cclass.setClassId(UUID.randomUUID().toString());
		cclass.setFlagDel(0);
		cclass.setState(0);
		cclassMapper.addCclass(cclass);
		/*String classId = cclass.getClassId();
		Map<String,String> map = new HashMap<>();
		map.put("classId", classId);*/
		/*List<String> sid = cclass.getStudent();*/
		/*List<String> tid = cclass.getTeacher();*/
		/*for(String studentid:sid){
			map.put("id",UUID.randomUUID()+"");
			map.put("studentid",studentid);
			cclassMapper.classBindStudent(map);
		}*/
		/*for(String teacherid:tid){
			map.put("id",UUID.randomUUID()+"");
			map.put("teacherid",teacherid);
			cclassMapper.classBindTeacher(map);
		}*/
		cclassMapper.addCclass(cclass);
	}
	
	@Override
	public void updataCclass(CclassModel cclass) {
		cclassMapper.updataCclass(cclass);
	}
	
	@Override
	public CclassModel queryCclassById(String cclass) {
		return cclassMapper.queryCclassById(cclass);
	}


	/*班级绑定学生*/
	@Override
	public void classBindStudent(Map<String, String> map) {
		cclassMapper.classBindStudent(map);
	}

	
	/** 学生绑定班级接口实现 * */
	/** 成绩绑定班级接口 实现* */
	@Override
	public List<CclassModel> queryList() {
		return cclassMapper.queryList();
	}


	@Override
	public void classBindTeacher(Map<String, String> map) {
		cclassMapper.classBindTeacher(map);
	}

	
}
