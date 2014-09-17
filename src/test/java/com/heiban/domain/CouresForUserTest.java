package com.heiban.domain;

import static org.junit.Assert.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

public class CouresForUserTest {
	private static SessionFactory sessionFactory;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();

	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		sessionFactory.close();
	}

	@Test
	public void test() {
		Session session = sessionFactory.openSession();
		CoursesForUser cfu = (CoursesForUser)session.load(CoursesForUser.class, 2);
		Assert.assertEquals(cfu.getCourseId(), "CS101");
	}

}
