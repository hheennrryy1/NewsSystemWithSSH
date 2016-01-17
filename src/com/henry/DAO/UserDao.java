package com.henry.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.henry.entity.User;


@Repository
public class UserDao {
	private SessionFactory sessionFactory;
	
	@Autowired
	UserDao(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@SuppressWarnings("unchecked")
	public boolean checkUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM User WHERE userName = ? AND password = ?";
		List<User>list = session.createQuery(hql).setString(0, user.getUserName()).setString(1, user.getPassword()).list();
		if(list.isEmpty()) {
			return false;
		}
			return true;
	}
}
