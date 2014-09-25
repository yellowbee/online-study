package com.heiban.web.controller;

import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.heiban.service.impl.ForumServiceImpl;

@Controller
public class ForumController {
	private ForumServiceImpl forumService;

	public ForumServiceImpl getForumService() {
		return forumService;
	}

	@Autowired
	@Qualifier("forumService")
	public void setForumService(ForumServiceImpl forumService) {
		this.forumService = forumService;
	}
	
	@RequestMapping(value="/course_forum", method=RequestMethod.GET)
	public ModelAndView courseForum() {
		ModelAndView mav = new ModelAndView("course_forum");
		Set<Map<String, Object>> result = forumService.getForumThreadsBySessionId("spring2014");
		mav.addObject("result", result);
		Object[] array = result.toArray();
		for (int i=0; i<array.length; i++) {
			Map<String, Object> map = (Map<String, Object>)array[i];
			System.out.println(map.get("title"));
		}
		return mav;
	}
}
