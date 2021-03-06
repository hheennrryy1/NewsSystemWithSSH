package com.henry.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.henry.entity.News;
import com.henry.service.NewsService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class UpdateNewsAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	@Autowired
	private NewsService newsService;
	private News news;
	
	@Override
	public String execute() throws Exception {
		newsService.updateNews(news);
		return "success";
	}
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
}
