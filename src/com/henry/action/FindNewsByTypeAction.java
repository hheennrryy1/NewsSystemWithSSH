package com.henry.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.henry.entity.News;
import com.henry.service.NewsService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class FindNewsByTypeAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	@Autowired
	private NewsService newsService;
	private String type;
	private List<News> list;
	
	public String execute() throws Exception {
		list = newsService.findNewsByType(type);
		return "success";
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<News> getList() {
		return list;
	}

	public void setList(List<News> list) {
		this.list = list;
	}
}
