package com.yh.model.teacher;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 教师笔记实体类
 * @param <T>
 * */
public class TeacherNotesModel implements Serializable{

	/**  */
	private static final long serialVersionUID = 1L;

	/** 教学笔记ID */
	private String teacherNotesId;
	
	/** 通知类型 */
	private String type;
	
	/** 编写人 */
	private String loginName;
	
	/** 教学笔记标题 */
	private String title;
	
	/** 教学笔记内容 */
	private byte [] content;
	
	private String contents;
	
	/** 创建时间 */
	private Date createTime;
	
	/** 提交时间 */
	private Date submitTime;
	
	/** 修改时间 */
	private Date updateTime;
	
	/** 是否删除 */
	private int flagDel;
	
	/** 状态 */
	private String state;
	
	/** 批量删除Id数组 */
	private String[] teacherNotesIds;
	
	/** 教学笔记绑定教师 * *//*
	private List<String> tid;*/
	
	/** 教学笔记投稿 * */
	//private String contribute;

	public String getTeacherNotesId() {
		return teacherNotesId;
	}

	public void setTeacherNotesId(String teacherNotesId) {
		this.teacherNotesId = teacherNotesId;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public byte[] getContent() {
		return content;
	}

	public void setContent(byte[] content) {
		this.content = content;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getSubmitTime() {
		return submitTime;
	}

	public void setSubmitTime(Date submitTime) {
		this.submitTime = submitTime;
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

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String[] getTeacherNotesIds() {
		return teacherNotesIds;
	}

	public void setTeacherNotesIds(String[] teacherNotesIds) {
		this.teacherNotesIds = teacherNotesIds;
	}

	/*public String getContribute() {
		return contribute;
	}

	public void setContribute(String contribute) {
		this.contribute = contribute;
	}
*/
	/*public List<String> getTid() {
		return tid;
	}

	public void setTid(List<String> tid) {
		this.tid = tid;
	}*/
	
	
}
