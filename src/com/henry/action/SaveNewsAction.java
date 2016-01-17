package com.henry.action;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.henry.entity.News;
import com.henry.service.NewsService;
import com.henry.utils.MyDate;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class SaveNewsAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	@Autowired
	private NewsService newsService;
	private News news;
	
	@Override
	public String execute() throws Exception {
		Date date = MyDate.getDate();
		news.setDate(date);
		newsService.saveNews(news);
		return "success";
	}
	
	public News getNews() {
		return news;
	}
	
	public void setNews(News news) {
		this.news = news;
	}
}
