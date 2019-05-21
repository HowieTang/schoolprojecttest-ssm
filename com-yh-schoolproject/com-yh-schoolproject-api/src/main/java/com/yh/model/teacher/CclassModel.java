package com.yh.model.teacher;

import java.io.Serializable;
import java.util.List;


public class CclassModel implements Serializable{

	/**
	 * 班级的model
	 */
	private static final long serialVersionUID = 1L;


	private String classId;
	
	/*年级*/
	private String grade;
	
	/*班级*/
	private String cclass;
	
	private int flagDel;
	
	private int state;
	
	//批量删除Id数组
	private String[] ccids;
	


	/*关联教师id*/
	public List<String> teacherId;

	/*关联学生id*/
	public List<String> studentId;
	

	public String getClassId() {
		return classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getCclass() {
		return cclass;
	}

	public void setCclass(String cclass) {
		this.cclass = cclass;
	}

	public int getFlagDel() {
		return flagDel;
	}

	public void setFlagDel(int flagDel) {
		this.flagDel = flagDel;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String[] getCcids() {
		return ccids;
	}

	public void setCcids(String[] ccids) {
		this.ccids = ccids;
	}

	public List<String> getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(List<String> teacherId) {
		this.teacherId = teacherId;
	}

	public List<String> getStudentId() {
		return studentId;
	}

	public void setStudentId(List<String> studentId) {
		this.studentId = studentId;
	}




	
}
