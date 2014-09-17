package com.heiban.dao;

import com.heiban.domain.User;

public interface UserDao {
	public User getUserByUsername(String username);
}
