package com.yh.model.teacher;

import java.io.Serializable;
import java.util.Date;

/*课程model*/

public class CourseModel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3819584663234671223L;

	/*课程id*/
	private String courseId;
	
	/*课程*/
	private String course;
	
	/*那一天的课*/
	private String week;
	
	
	/*任课教师id*/
	private String teacherId;
	
	/*开始时间*/
	private String stateTime;
	
	/*结束时间*/
	private String endTime;
	
	private int flagDel;
	
	private int state;
	
	//批量删除Id数组
	private String[] cids;

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}



	public String getStateTime() {
		return stateTime;
	}

	public void setStateTime(String stateTime) {
		this.stateTime = stateTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
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

	public String[] getCids() {
		return cids;
	}

	public void setCids(String[] cids) {
		this.cids = cids;
	}

	
	
}
