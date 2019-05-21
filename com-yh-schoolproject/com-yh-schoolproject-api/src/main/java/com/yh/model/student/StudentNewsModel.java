package com.yh.model.student;

import java.io.Serializable;
import java.util.Date;

public class StudentNewsModel implements Serializable {

	private static final long serialVersionUID = -6632515600826444715L;

	// 投稿id
	private String stuNewsId;

	// 投稿类型
	private String stuNewsType;

	// 投稿标题
	private String newsName;

	// 投稿时间
	private Date subTime;

	// 投稿内容
	private String newsText;
	
	
	private byte[] newsTexts;
	
	public byte[] getNewsTexts() {
		return newsTexts;
	}

	public void setNewsTexts(byte[] newsTexts) {
		this.newsTexts = newsTexts;
	}

	//账户id
	private String accountId;
	
	//投稿审批状态
	private int state;
	
	public String getAccountId() {
		return accountId;
	}

	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}

	//投稿删除状态
	private int flagDel;

	public int getFlagDel() {
		return flagDel;
	}

	public void setFlagDel(int flagDel) {
		this.flagDel = flagDel;
	}

	public String getStuNewsId() {
		return stuNewsId;
	}

	public void setStuNewsId(String stuNewsId) {
		this.stuNewsId = stuNewsId;
	}

	public String getStuNewsType() {
		return stuNewsType;
	}

	public void setStuNewsType(String stuNewsType) {
		this.stuNewsType = stuNewsType;
	}

	public String getNewsName() {
		return newsName;
	}

	public void setNewsName(String newsName) {
		this.newsName = newsName;
	}

	public Date getSubTime() {
		return subTime;
	}

	public void setSubTime(Date subTime) {
		this.subTime = subTime;
	}

	public String getNewsText() {
		return newsText;
	}

	public void setNewsText(String newsText) {
		this.newsText = newsText;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	

}
