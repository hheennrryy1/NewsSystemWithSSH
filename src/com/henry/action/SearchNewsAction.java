package com.henry.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.henry.entity.News;
import com.henry.service.NewsService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class SearchNewsAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	NewsService newsService;
	String keyword;
	List<News> list;

	@Override
	public String execute() throws Exception {
		list = newsService.searchNews(keyword);
		return "success";
	}
	
	public String getKeyword() {
		return keyword;
	}
	
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	public List<News> getList() {
		return list;
	}
	
	public void setList(List<News> list) {
		this.list = list;
	}
}
