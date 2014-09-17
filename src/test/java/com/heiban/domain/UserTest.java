package com.heiban.domain;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

public class UserTest {

	private static SessionFactory sessionFactory;
	
	@BeforeClass
	public static void beforeClass() {
		sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
	}
	
	@Test
	public void testUser() {
		Session session = sessionFactory.openSession();		
		User user= (User)session.load(User.class, "mkyong");
		Assert.assertEquals(user.getFirstName(), "mkyong");
		Assert.assertEquals(user.getLastName(), "lee");
	}
	
	@Test
	public void testGetUsername() {
		//fail("Not yet implemented");
	}

	/*@Test
	public void testSetUsername() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetPassword() {
		fail("Not yet implemented");
	}

	@Test
	public void testSetPassword() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetLastName() {
		fail("Not yet implemented");
	}

	@Test
	public void testSetLastName() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetFirstName() {
		fail("Not yet implemented");
	}

	@Test
	public void testSetFirstName() {
		fail("Not yet implemented");
	}*/

}
