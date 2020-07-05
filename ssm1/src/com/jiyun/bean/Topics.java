package com.jiyun.bean;

public class Topics {
	private Integer tid;
	private String topic;
	public Topics() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Topics(Integer tid, String topic) {
		super();
		this.tid = tid;
		this.topic = topic;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	@Override
	public String toString() {
		return "Topics [tid=" + tid + ", topic=" + topic + "]";
	}
	
	
}
