package com.yh.ws.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yh.model.student.StudentWriteModel;

@Repository
public interface StudentWriteMapper {

	    /** 查询写信列表 接口*/
	    public List<StudentWriteModel> queryStuWritetList(Map<String, Object> map);
	    /** 查询写信分页 接口*/
	    public Integer queryDataCount(StudentWriteModel stuWrite);
	    /** 查询写信表ID接口*/
	    public StudentWriteModel queryStuWriteById(String writeId);
		/** 写信添加接口*/
		public void save(StudentWriteModel stuWrite);
		/** 写信删除接口 */
		public void delete(StudentWriteModel stuWrite);
		//学生私信老师关联接口
		public void stuWriteBindteacher(Map<String, String> map);
		//学生私信学生关联接口
	    public void stuWriteBindstudent(Map<String, String> map);
}
