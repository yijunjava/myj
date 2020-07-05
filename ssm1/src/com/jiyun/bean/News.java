package com.jiyun.bean;


import java.util.Date;

import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;

public class News {
	private Integer nid;
	private Integer tid;
	private String title;
	private String img;
	private String content;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createtime;
	
	@Transient
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date starttime;
	
	@Transient
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date endtime;
	
	private Topics topics;
	public News() {
		super();
		// TODO Auto-generated constructor stub
	}
	public News(Integer nid, Integer tid, String title, String img, String content, Date createtime, Date starttime,
			Date endtime, Topics topics) {
		super();
		this.nid = nid;
		this.tid = tid;
		this.title = title;
		this.img = img;
		this.content = content;
		this.createtime = createtime;
		this.starttime = starttime;
		this.endtime = endtime;
		this.topics = topics;
	}
	public Integer getNid() {
		return nid;
	}
	public void setNid(Integer nid) {
		this.nid = nid;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public Date getStarttime() {
		return starttime;
	}
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}
	public Date getEndtime() {
		return endtime;
	}
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}
	public Topics getTopics() {
		return topics;
	}
	public void setTopics(Topics topics) {
		this.topics = topics;
	}
	@Override
	public String toString() {
		return "News [nid=" + nid + ", tid=" + tid + ", title=" + title + ", img=" + img + ", content=" + content
				+ ", createtime=" + createtime + ", starttime=" + starttime + ", endtime=" + endtime + ", topics="
				+ topics + "]";
	}
	
}
