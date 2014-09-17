package com.heiban.security.service;

import com.heiban.domain.User;

public interface UserContext {
	User getCurrentUser();
	void setCurrentUser(User user);
}
