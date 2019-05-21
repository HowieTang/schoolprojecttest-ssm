package com.yh.model.sys;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class AccountModel implements Serializable{

	/**  */
	private static final long serialVersionUID = 1L;
	/** 账户ID */
	private String accountId;
	/** 账户登录名 */            
	private String loginName;
	/** 账户昵称 */            
	private String name;
	
	private String roleName;
	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	/** 账户密码 */           
	private String pwd;
	/** 账户创建时间 */              
    private Date createTime;
    /** 账户更新时间 */           
    private Date updateTime;
    /** 账户删除状态  */      
	private int flagDel;
	/** 账户启用状态 */        
	private int state;
	private String roleid;
	
	private String arid;
	public String getArid() {
		return arid;
	}

	public void setArid(String arid) {
		this.arid = arid;
	}

	public String getRoleid() {
		return roleid;
	}

	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}

	/** 账户关联角色 查询角色表中的ID  */
	private List<String> roleId;

	public String getAccountId() {
		return accountId;
	}

	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
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

	public List<String> getRoleId() {
		return roleId;
	}

	public void setRoleId(List<String> roleId) {
		this.roleId = roleId;
	}

	
}
