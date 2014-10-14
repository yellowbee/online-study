package com.heiban.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.heiban.domain.User;
import com.heiban.service.HeibanService;

@Controller
public class SpringSecurityHelloController {
	private HeibanService heibanService;
	
	
	public HeibanService getHeibanService() {
		return heibanService;
	}

	@Autowired
	@Qualifier("heibanService")
	public void setHeibanService(HeibanService heibanService) {
		this.heibanService = heibanService;
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
    public ModelAndView mypage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("page");
		SecurityContext context = SecurityContextHolder.getContext();
		Authentication authentication = context.getAuthentication();
		String username = authentication.getName();
		User user = heibanService.getUserByUsername(username);
		HttpSession session = request.getSession();
		session.setAttribute("fullname", user.getLastName() + user.getFirstName());
		
		mav.addObject("username", username);
		mav.addObject("firstname", user.getFirstName());
		mav.addObject("lastname", user.getLastName());
		mav.addObject("courses", user.getCourses());
        return mav;
    }
	
	@RequestMapping(value="/mycourse", method=RequestMethod.GET)
	public ModelAndView mycourse(@RequestParam String sess) {
		ModelAndView mav = new ModelAndView("course");
		mav.addObject("sess", sess);
		return mav;
	}

	@RequestMapping(value="/session_material", method=RequestMethod.GET)
	public ModelAndView mySessionMaterial(@RequestParam String sess) {
		ModelAndView mav = new ModelAndView("session_docs");
		mav.addObject("sess", sess);
		return mav;
	}
	
	@RequestMapping(value="/hw_submission", method=RequestMethod.GET)
	public ModelAndView myHomeworkSubmission(@RequestParam String sess) {
		ModelAndView mav = new ModelAndView("hw_upload");
		mav.addObject("sess", sess);
		return mav;
	}
	
	@RequestMapping(value="/grade", method=RequestMethod.GET)
	public ModelAndView checkGrade(@RequestParam String sess) {
		ModelAndView mav = new ModelAndView("mygrade");
		mav.addObject("sess", sess);
		return mav;
	}
	/*@RequestMapping(value="/course_forum", method=RequestMethod.GET)
	public ModelAndView courseForum() {
		ModelAndView mav = new ModelAndView("course_forum");
		return mav;
	}*/
	
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage() {
        return "logoutPage";
    }
     
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
        return "bs_login_page";
    }
}
