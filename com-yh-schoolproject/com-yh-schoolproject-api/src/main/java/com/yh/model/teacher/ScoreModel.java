package com.yh.model.teacher;

import java.io.Serializable;
import java.util.List;

/**
 * 成绩实体类
 * @param <T>
 * */
public class ScoreModel implements Serializable{

	/**  */
	private static final long serialVersionUID = 1L;

	/** 成绩ID */
	private String scoreId;
	
	/** 学期 */
	private String term;
	
	/** 学生ID */
	private String sname;
	

	/** 班级ID */
	private String cclass;
	
	/** 课程ID */
	private String course;
	
	/** 考试分数 */
	private String examScore;
	
	/** 考试时间 */
	private String examTime;
	
	/** 是否删除 */
	private int flagDel;
	
	/** 状态 */
	private int state;
	
	/** 学生姓名* */
	//private String sname;
	
	/** 成绩绑定学生* */
	private List<String> sid;
	
	/** 成绩绑定班级 * */
	private List<String> classID;
	
	/** 成绩绑定课程 * */
	private List<String> courseID;
	
	/** 批量删除Id数组 */
	private String[] scoreIds;
	
	public String getScoreId() {
		return scoreId;
	}

	public void setScoreId(String scoreId) {
		this.scoreId = scoreId;
	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	/*public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}*/

	public String getCclass() {
		return cclass;
	}

	public void setCclass(String cclass) {
		this.cclass = cclass;
	}


	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getExamScore() {
		return examScore;
	}

	public void setExamScore(String examScore) {
		this.examScore = examScore;
	}

	public String getExamTime() {
		return examTime;
	}

	public void setExamTime(String examTime) {
		this.examTime = examTime;
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

	public List<String> getSid() {
		return sid;
	}

	public void setSid(List<String> sid) {
		this.sid = sid;
	}

	public List<String> getClassID() {
		return classID;
	}

	public void setClassID(List<String> classID) {
		this.classID = classID;
	}

	public List<String> getCourseID() {
		return courseID;
	}

	public void setCourseID(List<String> courseID) {
		this.courseID = courseID;
	}

	public String[] getScoreIds() {
		return scoreIds;
	}

	public void setScoreIds(String[] scoreIds) {
		this.scoreIds = scoreIds;
	}
	
	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}
	

}
