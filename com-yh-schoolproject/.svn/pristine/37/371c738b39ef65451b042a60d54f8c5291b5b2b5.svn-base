package com.yh.ws.mapper.teacher;

import java.util.List;

/**
 * 教师日志增删改查接口
 * */
import org.springframework.stereotype.Repository;

import com.yh.model.teacher.TeacherJournalModel;
import com.yh.model.teacher.TeacherModel;

@Repository
public interface TeacherJournalMapper {
	
	/**教师日志查询列表接口*/
	public List<TeacherJournalModel> queryteacherJournalList();
	
	/*添加*/
	public void addJournal(TeacherJournalModel journa);
	

	/*根据id查询列表*/
	public TeacherJournalModel queryJournalById(String id);

	/*修改*/
	public void updataJourna(TeacherJournalModel journa);

	/*删除*/
	public void deleteJournalById(TeacherJournalModel journa);
	
}
