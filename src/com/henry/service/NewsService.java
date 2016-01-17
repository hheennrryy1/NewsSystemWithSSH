package com.henry.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.henry.DAO.NewsDao;
import com.henry.entity.News;

@Service
@Transactional
public class NewsService {
	@Autowired
	private NewsDao newsDao;
	
	public void saveNews(News news) {
		newsDao.saveNews(news);
	}
	
	public List<News> QueryAll() {
		return newsDao.QueryAll();
	}
	
	public News findNewsById(int newsId) {
		return newsDao.findNewsById(newsId);
	}
	
	public List<News> findNewsByType(String type) {
		return newsDao.findNewsByType(type);
	}
	
	public void updateNews(News news) {
		newsDao.updateNews(news);
	}
	
	public void deleteNews(News news) {
		newsDao.deleteNews(news);
	}
	
	public List<News> searchNews(String keyword) {
		return newsDao.searchNews(keyword);
	}
}
