package com.jiyun.mapper;

import java.util.List;

import com.jiyun.bean.News;
import com.jiyun.bean.Topics;

public interface NewsMapper {

	List<News> findAll(News news);

	News findById(Integer nid);

	List<Topics> findTopics();

	void update(News news);

	void deleteAll(Integer[] nids);

	void add(News news);

}
