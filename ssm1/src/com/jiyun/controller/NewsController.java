package com.jiyun.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jiyun.bean.News;
import com.jiyun.bean.Topics;
import com.jiyun.service.NewsService;


@Controller
@RequestMapping("news")
public class NewsController {
@Autowired
private NewsService newsService;
@RequestMapping("findAll")
	public String findAll(@RequestParam(defaultValue="1")Integer pageNum,News news,Model model){
		PageHelper.startPage(pageNum, 2);
		List<News> nlist=newsService.findAll(news);
		PageInfo<News> page=new PageInfo<>(nlist);
		model.addAttribute("page", page);
		return "show";
	}
	@RequestMapping("findById")
	public String findById(Integer nid,Model model){
		News news=newsService.findById(nid);
		model.addAttribute("news", news);
		return "update";
	}
	@ModelAttribute
	public void findTopics(Model model){
		List<Topics> tlist=newsService.findTopics();
		model.addAttribute("tlist", tlist);
	}
	@RequestMapping("update")
	public String update(MultipartFile imgfile,News news) throws Exception, Exception{
		if (imgfile.getSize()>0) {
			//获取图片名称
			String filename = imgfile.getOriginalFilename();
			String suffix = filename.substring(filename.lastIndexOf("."));
			String newimg=System.currentTimeMillis()+suffix;
			File file = new File("d:/img/"+newimg);
			imgfile.transferTo(file);
			news.setImg(newimg);
		}
		newsService.update(news);
		return "redirect:findAll.do";
	}
	@RequestMapping("deleteAll")
	public String deleteAll(Integer[] nids){
		newsService.deleteAll(nids);
		return "redirect:findAll.do";
	}
	@RequestMapping("toadd")
	public String toadd(){
		return "add";
	}
	@RequestMapping("add")
	public String add(MultipartFile imgfile,News news) throws Exception, Exception{
		//获取图片名称
		String filename = imgfile.getOriginalFilename();
		String suffix = filename.substring(filename.lastIndexOf("."));
		String newimg=System.currentTimeMillis()+suffix;
		File file = new File("d:/img/"+newimg);
		imgfile.transferTo(file);
		news.setImg(newimg);
		newsService.add(news);
		return "redirect:findAll.do";
	}
}
