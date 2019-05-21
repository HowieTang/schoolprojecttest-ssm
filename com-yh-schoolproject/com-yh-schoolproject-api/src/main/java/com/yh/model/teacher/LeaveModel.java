package com.yh.model.teacher;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 教师请假实体类
 * 
 */
public class LeaveModel implements Serializable{
	private static final long serialVersionUID = 1L;
    
	/*id*/
	private String tleaveId;
	
	private String type;
	/*请假人姓名*/
	private String tleaveName;
	
	/*请假原因*/
	private String reason;
	
	/*请假开始时间*/
	private String leaveTime;
	
	/*请假结束时间*/
	private String returnTime; 
	
	/*是否删除*/
	private int flagDel;
	
	/*状态*/
	private int state;
	

	//批量删除Id数组
	private String[] lids;
	
	public String getTleaveId() {
		return tleaveId;
	}

	public void setTleaveId(String tleaveId) {
		this.tleaveId = tleaveId;
	}
	
	


	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTleaveName() {
		return tleaveName;
	}

	public void setTleaveName(String tleaveName) {
		this.tleaveName = tleaveName;
	}


	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getLeaveTime() {
		return leaveTime;
	}

	public void setLeaveTime(String leaveTime) {
		this.leaveTime = leaveTime;
	}

	public String getReturnTime() {
		return returnTime;
	}

	public void setReturnTime(String returnTime) {
		this.returnTime = returnTime;
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

	public String[] getLids() {
		return lids;
	}

	public void setLids(String[] lids) {
		this.lids = lids;
	}


	
}
