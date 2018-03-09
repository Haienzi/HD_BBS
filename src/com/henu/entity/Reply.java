package com.henu.entity;

/**
 * 论坛回复实体类
 */
import java.sql.Date;

public class Reply {
	private Integer rid; //回复Id
	private Integer pId;//回复的贴子的Id
	private Integer userId;//回复用户Id
	private String content;//回复内容
	private Date replyTime;//回复时间		
	
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public Integer getpId() {
		return pId;
	}
	public void setpId(Integer pId) {
		this.pId = pId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}	
	public Date getReplyTime() {
		return replyTime;
	}
	public void setReplyTime(Date replyTime) {
		this.replyTime = replyTime;
	}
	
}
