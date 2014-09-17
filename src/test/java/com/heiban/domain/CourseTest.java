package com.heiban.domain;

import static org.junit.Assert.fail;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

public class CourseTest {
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
	public void testCourse() {
		Session session = sessionFactory.openSession();
		Course course = (Course)session.load(Course.class, "CS101");
		Assert.assertEquals(course.getCourseName(), "CS Introduction");
	}
	
	@Test
	public void test() {
		fail("Not yet implemented");
	}

}
