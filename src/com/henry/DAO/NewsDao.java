package com.henry.DAO;

import java.util.Collections;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.henry.entity.News;

@Repository
public class NewsDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public void saveNews(News news) {
		Session session = sessionFactory.getCurrentSession();
		session.save(news);
	}
	
	@SuppressWarnings("unchecked") 
	public List<News> QueryAll() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from News");
		List<News> list = query.list(); 
		Collections.reverse(list);
		return list;
	}
	
	public News findNewsById(int newsId) {
		Session session = sessionFactory.getCurrentSession();
		News news = (News) session.get(News.class, newsId);
		return news;
	}
	
	@SuppressWarnings("unchecked")
	public List<News> findNewsByType(String type) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from News where type = ?").setString(0, type);
		List<News> list = query.list(); 
		Collections.reverse(list);
		return list;
	}
	
	public void updateNews(News news) {
		Session session = sessionFactory.getCurrentSession();
		session.update(news);
	}
	
	public void deleteNews(News news) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(news);
	}
	
	@SuppressWarnings("unchecked")
	public List<News> searchNews(String keyword) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from News where title like ? or content like ?").
			setString(0, "%" + keyword + "%").setString(1, "%" + keyword + "%");
		List<News> list = query.list();
		Collections.reverse(list);
		return list;
	}
}
