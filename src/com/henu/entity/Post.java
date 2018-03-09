package com.henu.entity;

import java.sql.Date;

/**
 * 一条帖子 可按照话题id分表存储
 */
public class Post {
	private Integer pid; // 贴子的id
	private Integer userId; // 创建该贴子的用户的id
	private String title; // 标题
	private Date creatTime;// 创建时间
	private Integer replyCount; // 回复数
	private Date lastReplytime;// 最后回复时间	

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(Integer replyCount) {
		this.replyCount = replyCount;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getCreatTime() {
		return creatTime;
	}

	public void setCreatTime(Date creatTime) {
		this.creatTime = creatTime;
	}

	public Date getLastReplytime() {
		return lastReplytime;
	}

	public void setLastReplytime(Date lastReplytime) {
		this.lastReplytime = lastReplytime;
	}
}
