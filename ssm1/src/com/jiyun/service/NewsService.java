package com.jiyun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiyun.bean.News;
import com.jiyun.bean.Topics;
import com.jiyun.mapper.NewsMapper;
@Service

public class NewsService {
	@Autowired
	private NewsMapper newsMapper;
	public List<News> findAll(News news) {
		// TODO Auto-generated method stub
		return newsMapper.findAll(news);
	}
	public News findById(Integer nid) {
		// TODO Auto-generated method stub
		return newsMapper.findById(nid);
	}
	public List<Topics> findTopics() {
		// TODO Auto-generated method stub
		return newsMapper.findTopics();
	}
	public void update(News news) {
		// TODO Auto-generated method stub
		newsMapper.update(news);
	}
	public void deleteAll(Integer[] nids) {
		// TODO Auto-generated method stub
		newsMapper.deleteAll(nids);
	}
	public void add(News news) {
		// TODO Auto-generated method stub
		newsMapper.add(news);
	}

}
