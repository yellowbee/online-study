package com.heiban.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.heiban.dao.UserDao;
import com.heiban.domain.Course;
import com.heiban.domain.User;
import com.heiban.service.HeibanService;

@Component("heibanService")
public class HeibanServiceImpl implements HeibanService {
	private UserDao userDao;
	
	
	public UserDao getUserDao() {
		return userDao;
	}
	@Autowired
	@Qualifier("userDao")
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public User getUserByUsername(String username) {
		return userDao.getUserByUsername(username);
	}

	public Course getCourseById(String courseId) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Course> getCoursesByUser(String username) {
		// TODO Auto-generated method stub
		return null;
	}

}
