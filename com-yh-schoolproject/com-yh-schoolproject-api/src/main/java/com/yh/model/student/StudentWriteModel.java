package com.yh.model.student;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class StudentWriteModel implements Serializable{

	//写信表ID
	private String writeId;
	//写信人
	private String letterWriter;
	//收件人
	private String addressee;
	
	private byte [] messageContent;
	
	//写信内容
	private String messageContents;
	//发送时间
	private String sendTime;
	//状态
	private int state;
	
	private String[] writeids;
	
	private List<String> teacherId;
	
	private List<String> studentId;
	
   private List<String> tname;
	
	private List<String> sname;
	
	public String[] getWriteids() {
		return writeids;
	}
	public void setWriteids(String[] writeids) {
		this.writeids = writeids;
	}
	
	public String getWriteId() {
		return writeId;
	}
	public void setWriteId(String writeId) {
		this.writeId = writeId;
	}
	public String getLetterWriter() {
		return letterWriter;
	}
	public void setLetterWriter(String letterWriter) {
		this.letterWriter = letterWriter;
	}
	public String getAddressee() {
		return addressee;
	}
	public void setAddressee(String addressee) {
		this.addressee = addressee;
	}
	public byte[] getMessageContent() {
		return messageContent;
	}
	public void setMessageContent(byte[] messageContent) {
		this.messageContent = messageContent;
	}
	public String getMessageContents() {
		return messageContents;
	}
	public void setMessageContents(String messageContents) {
		this.messageContents = messageContents;
	}
	public String getSendTime() {
		return sendTime;
	}
	public void setSendTime(String sendTime) {
		this.sendTime = sendTime;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
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
	public List<String> getTname() {
		return tname;
	}
	public void setTname(List<String> tname) {
		this.tname = tname;
	}
	public List<String> getSname() {
		return sname;
	}
	public void setSname(List<String> sname) {
		this.sname = sname;
	}
}
