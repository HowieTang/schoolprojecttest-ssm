package com.yh.ws.service.impl.teacher;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yh.api.service.teacher.TeacherJournalService;
import com.yh.model.teacher.LeaveModel;
import com.yh.model.teacher.TeacherJournalModel;
import com.yh.model.teacher.TeacherNotesModel;
import com.yh.ws.mapper.teacher.TeacherJournalMapper;

@Service("teacherJournalService")
public class TeacherJournalServiceImpl implements TeacherJournalService {

	@Autowired
	private TeacherJournalMapper teacherJournalMapper;

	/**教师日志查询列表接口实现*/
	@Override
	public List<TeacherJournalModel> queryteacherJournalList() {
		List<TeacherJournalModel> teacherJournal = teacherJournalMapper.queryteacherJournalList();
		return teacherJournal;
	}

   /* 添加*/
	@Override
	public void addJournal(TeacherJournalModel journa) {
		teacherJournalMapper.addJournal(journa);
	}
	/*修改*/
	@Override
	public void updataJournal(TeacherJournalModel journa) {
		teacherJournalMapper.updataJourna(journa);		
	}

	/** 删除* */
	@Override
	public void deleteJournalById(TeacherJournalModel journa) {
		teacherJournalMapper.deleteJournalById(journa);
	}
	/*获取id*/
	@Override
	public TeacherJournalModel queryJournalById(String id) {
		return teacherJournalMapper.queryJournalById(id);
	}
}
