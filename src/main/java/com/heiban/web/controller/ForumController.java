package com.heiban.web.controller;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.heiban.service.impl.ForumServiceImpl;
import com.mongodb.DBObject;

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
	public ModelAndView courseForum(@RequestParam String sess) {
		ModelAndView mav = new ModelAndView("forum_threads");
		mav.addObject("sess", sess);
		System.out.println("sess: " + sess);
		Set<DBObject> threads = forumService.getForumThreadsBySessionId(sess);
		mav.addObject("threads", threads);
		for (DBObject dbo : threads) {
			System.out.println(dbo.get("title"));
		}
		return mav;
	}

	@RequestMapping(value="/forum_posts", method=RequestMethod.GET)
	public ModelAndView getForumPosts(@RequestParam int thread_seq) {
		ModelAndView mav = new ModelAndView("forum_posts");
		Set<DBObject> posts = forumService.getForumPostsByThreadSequence(thread_seq);
		mav.addObject("thread", forumService.getOneForumThreadByThreadSequence(thread_seq));
		mav.addObject("posts", posts);
		/*for (DBObject dbo : posts) {
			System.out.println(dbo.get("text"));
		}*/
		return mav;
	}
}
