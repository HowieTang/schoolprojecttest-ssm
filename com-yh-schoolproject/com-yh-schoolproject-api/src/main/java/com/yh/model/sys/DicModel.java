package com.yh.model.sys;

import java.io.Serializable;


/*
 * 字典实体类
 * */
public class DicModel implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6768698854294286537L;

	//字典id
	private String did;
	
	//字典类型
	private String type;
	
	//字典描述
	private String des;
	
	//批量删除Id数组
	private String[] dids;
	
	

	public String[] getDids() {
		return dids;
	}

	public void setDids(String[] dids) {
		this.dids = dids;
	}

	//字典代码
	private String code;

	public String getDid() {
		return did;
	}

	public void setDid(String did) {
		this.did = did;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
}
