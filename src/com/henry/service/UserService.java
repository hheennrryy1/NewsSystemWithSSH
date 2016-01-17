package com.henry.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.henry.DAO.UserDao;
import com.henry.entity.User;

@Service
@Transactional
public class UserService {
	@Autowired
	UserDao userDao;
	public boolean checkUser(User user) {
		return userDao.checkUser(user);
	}
}
