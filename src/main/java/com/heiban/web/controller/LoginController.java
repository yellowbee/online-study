package com.heiban.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	/*@RequestMapping(method = RequestMethod.GET, value = "/custom_login")
	public String showLogin(){
		return "custom_login";
	}*/

	/*@RequestMapping(value="/main", method = RequestMethod.GET)
	public String printWelcome(ModelMap model, Principal principal ) {
	 
		String name = principal.getName();
		model.addAttribute("username", name);
		return "main_page";
	 
	}*/
	 
	@RequestMapping(value="/custom_login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView model = new ModelAndView("custom_login_a");
		return model;
	 
	}
	 
	@RequestMapping(value="/loginError", method = RequestMethod.GET)
	public ModelAndView loginError() {
		ModelAndView model = new ModelAndView("custom_login_a");
		model.addObject("error", "true");
		return model;
	 
	}
}
