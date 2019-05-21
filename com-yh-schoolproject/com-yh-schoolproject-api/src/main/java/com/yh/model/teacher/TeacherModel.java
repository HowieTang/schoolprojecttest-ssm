package com.yh.model.teacher;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 老师实体类
 * */
public class TeacherModel implements Serializable{

	private static final long serialVersionUID = 1L;

	private String teacherId;
	
	private String tname;
	
	private String sex;
	
	private String age;
	
	private String email;
	
	private String tel;
	/*入校时间*/
	private Date admissionTime;
	/*任教*/
	private String teach;
	/*职务*/
	private String type;
	/*通知表中的type*/
	private String teacherType;
	/**创建时间  */
	private Date createTime;
	/**修改时间  */
	private Date updateTime;
	/**是否删除  */
	private int flagDel;
	/**状态  */
	private int state;
	
	/**教师绑定账户  */
	private List<String> accountId;
	

	//批量删除Id数组
	private String[] tids;
	
	
	public String getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public Date getAdmissionTime() {
		return admissionTime;
	}
	public void setAdmissionTime(Date admissionTime) {
		this.admissionTime = admissionTime;
	}
	public String getTeach() {
		return teach;
	}
	public void setTeach(String teach) {
		this.teach = teach;
	}

	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTeacherType() {
		return teacherType;
	}
	public void setTeacherType(String teacherType) {
		this.teacherType = teacherType;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
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
	public List<String> getAccountId() {
		return accountId;
	}
	public void setAccountId(List<String> accountId) {
		this.accountId = accountId;
	}
	public String[] getTids() {
		return tids;
	}
	public void setTids(String[] tids) {
		this.tids = tids;
	}
	
	
}
