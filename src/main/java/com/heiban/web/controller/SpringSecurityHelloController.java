package com.heiban.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
    public ModelAndView mypage() {
		ModelAndView mav = new ModelAndView("page");
		SecurityContext context = SecurityContextHolder.getContext();
		Authentication authentication = context.getAuthentication();
		String username = authentication.getName();
		User user = heibanService.getUserByUsername(username);
		mav.addObject("username", username);
		mav.addObject("firstname", user.getFirstName());
		mav.addObject("lastname", user.getLastName());
		mav.addObject("courses", user.getCourses());
        return mav;
    }
	
	@RequestMapping(value="/mycourse", method=RequestMethod.GET)
	public ModelAndView mycourse() {
		ModelAndView mav = new ModelAndView("course");
		return mav;
	}

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage() {
        return "logoutPage";
    }
     
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
        return "bs_login_page";
    }
}
