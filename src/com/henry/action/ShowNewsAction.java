package com.henry.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.henry.entity.News;
import com.henry.service.NewsService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class ShowNewsAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	List<News> list;
	private int size;

	@Autowired
	private NewsService newsService;
	
	public String showNewsForIndex() throws Exception {
		list = newsService.QueryAll();
		return "success";
	}
	
	@Override
	public String execute() throws Exception {
		list = newsService.QueryAll();
		return "success";
	}
	
	public String managerNews() throws Exception {
		size = list.size();
		list = newsService.QueryAll();
		return "success";
	}
	
	public int getSize() {
		return size;
	}
	
	public void setSize(int size) {
		this.size = size;
	}
	
	public List<News> getList() {
		return list;
	}
	
	public void setList(List<News> list) {
		this.list = list;
	}
}
