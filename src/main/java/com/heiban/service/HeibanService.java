package com.heiban.service;

import java.util.List;

import com.heiban.domain.Course;
import com.heiban.domain.User;

public interface HeibanService {
	User getUserByUsername(String username);
	Course getCourseById(String courseId);
	List<Course> getCoursesByUser(String username);
}
