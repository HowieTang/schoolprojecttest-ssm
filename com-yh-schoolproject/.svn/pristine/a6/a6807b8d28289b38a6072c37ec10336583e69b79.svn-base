package com.yh.ws.service.impl.teacher;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yh.api.service.teacher.StudentService;
import com.yh.model.page.PageModel;
import com.yh.model.teacher.StudentModel;
import com.yh.ws.mapper.teacher.StudentMapper;


/**
 * 学生实现增删改查的数据库操作
 * */
@Service("studentListService")
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentMapper studentListMapper;
	
	/** 学生列表分页接口实现 * */
	@Override
	public PageModel queryStudentList(PageModel page,StudentModel student) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		int dataCount=studentListMapper.queryDataCount(student);
		if(dataCount!=0){
			page.setDataCount(dataCount);
		}
		page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
		page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
	
		map.put("student", student);
		map.put("page", page);
		
		List<StudentModel> slist=studentListMapper.queryStudentList(map);
		page.setList(slist);
		return page;
	}

	/** 学生删除接口实现 * */
	@Override
	public void deleteStudent(StudentModel student) {
		studentListMapper.deleteStudent(student);
	}

	/** 学生添加接口实现 * */
	@Override
	public void addStudent(StudentModel student) {
		student.setStudentId(UUID.randomUUID().toString());
		student.setFlagDel(0);
		student.setState(0);
		student.setStudentType("student");
		studentListMapper.addStudent(student);
		String studentId = student.getStudentId();
		Map<String,String> map = new HashMap<>();
		map.put("studentId", studentId);
		List<String> AccountId = student.getAccountId();
		for(String accountid : AccountId){
			map.put("id", UUID.randomUUID()+"");
			map.put("accountid", accountid);
			studentListMapper.studentBindAccount(map);
		}
		/*List<String> Cid = student.getCid();
		for(String cid : Cid){
			map.put("id", UUID.randomUUID()+"");
			map.put("cid", cid);
			studentListMapper.studentBindClass(map);
		}*/
		
	}
	
	/** 根据ID查询学生列表接口实现 * */
	@Override
	public StudentModel queryStudentById(String studentId) {
		return studentListMapper.queryStudentById(studentId);
	}
	
	@Override
	public void studentBindAccount(Map<String, String> map) {
		studentListMapper.studentBindAccount(map);
	}

	/** 成绩绑定学生接口实现* */
	@Override
	public List<StudentModel> queryList() {
		return studentListMapper.queryList();
	}

	@Override
	public StudentModel update(StudentModel student) {
		 return studentListMapper.update(student);
	}
	public PageModel queryNoClassList(PageModel page, StudentModel student) {
		Map<String, Object> map = new HashMap<String, Object>();
			
			int dataCount=studentListMapper.queryDataCount(student);
			if(dataCount!=0){
				page.setDataCount(dataCount);
			}
			page.setPageCount(page.getDataCount()%page.getPageSize()>0?page.getDataCount()/page.getPageSize()+1:page.getDataCount()/page.getPageSize());
			page.setPageIndex((page.getPageNow()-1)*page.getPageSize());
		
			map.put("student", student);
			map.put("page", page);
			
			List<StudentModel> slist=studentListMapper.queryNoClassList(map);
			page.setList(slist);
			return page;

	
	
	/*@Override
	public void studentBindClass(Map<String, String> map) {
		studentListMapper.studentBindClass(map);
	}
*/


	}
}
