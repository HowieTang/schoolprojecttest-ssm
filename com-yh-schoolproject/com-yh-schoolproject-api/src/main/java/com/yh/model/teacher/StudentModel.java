package com.yh.model.teacher;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 学生实体类
 */
public class StudentModel implements Serializable {

	/**  */
	private static final long serialVersionUID = 1L;

	/** 学生ID */
	private String studentId;

	/** 学生姓名 */
	private String sname;

	/** 学生性别 */
	private String sex;

	/** 学生年龄 */
	private String age;

	/** 学生邮箱 */
	private String email;

	/** 学生电话 */
	private String tel;

	/** 学生紧急联系人电话 */
	private String parentTel;

	/**班级*/
	private String cclass;

	/** 学生入校时间 */
	private Date createTime;

	/** 学生修改时间 */
	private Date updateTime;

	/** 学生是否删除 */
	private int flagDel;

	/** 学生状态 */
	private int state;

	/** 通知范围 学生是否通知 */
	private String studentType;

	/** 学生绑定账户 */
	private List<String> accountId;
	
	/** 学生绑定班级 */
	//private List<String> cid;
	
	/** 批量删除Id数组 */
	private String[] studentIds;

	public String[] snames;

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
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

	public String getParentTel() {
		return parentTel;
	}

	public void setParentTel(String parentTel) {
		this.parentTel = parentTel;
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

	public String getStudentType() {
		return studentType;
	}

	public void setStudentType(String studentType) {
		this.studentType = studentType;
	}

	public List<String> getAccountId() {
		return accountId;
	}

	public void setAccountId(List<String> accountId) {
		this.accountId = accountId;
	}

	public String[] getStudentIds() {
		return studentIds;
	}

	public void setStudentIds(String[] studentIds) {
		this.studentIds = studentIds;
	}

/*	public List<String> getCid() {
		return cid;
	}

	public void setCid(List<String> cid) {
		this.cid = cid;
	}*/

	public String getCclass() {
		return cclass;
	}

	public void setCclass(String cclass) {
		this.cclass = cclass;
	}

	public String[] getSnames() {
		return snames;
	}

	public void setSnames(String[] snames) {
		this.snames = snames;
	}

}
