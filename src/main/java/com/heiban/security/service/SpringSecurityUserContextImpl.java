package com.heiban.security.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.heiban.domain.User;
import com.heiban.service.HeibanService;

@Component
public class SpringSecurityUserContextImpl implements UserContext {
	private HeibanService heibanService;
	
	public HeibanService getHeibanService() {
		return heibanService;
	}

	//@Autowired
	public void setHeibanService(HeibanService heibanService) {
		this.heibanService = heibanService;
	}

	public User getCurrentUser() {
		SecurityContext context = SecurityContextHolder.getContext();
		Authentication authentication = context.getAuthentication();
		if (authentication == null) {
			return null;
		}
		
		String username = authentication.getName();
		return heibanService.getUserByUsername(username);
	}

	public void setCurrentUser(User user) {
	}

}
