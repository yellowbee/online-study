package com.heiban.dao.hib;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.heiban.dao.UserDao;
import com.heiban.domain.User;

//@Component("userDao")
public class UserDaoHib implements UserDao {

	private static SessionFactory sessionFactory;
	
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	/*@Autowired
	@Qualifier("sessionFactory")*/
	public static void setSessionFactory(SessionFactory sessionFactory) {
		UserDaoHib.sessionFactory = sessionFactory;
	}

	public User getUserByUsername(String username) {
		Session session = sessionFactory.openSession();
		User user = (User)session.load(User.class, username);
		return user;
	}

}
