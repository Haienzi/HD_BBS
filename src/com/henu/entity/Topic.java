package com.henu.entity;

public class Topic {

	private Integer tid;// 话题id
	private Integer fid;// 所属话题id
	private Integer postConut;//贴子数
	private String content;// 话题简介

	public Integer getTid() {
		return tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}
	
	public Integer getFid() {
		return fid;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
	}

	public Integer getPostConut() {
		return postConut;
	}

	public void setPostConut(Integer postConut) {
		this.postConut = postConut;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}