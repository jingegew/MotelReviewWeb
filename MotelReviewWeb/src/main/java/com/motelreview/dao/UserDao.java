package com.motelreview.dao;

import java.util.List;

import com.motelreview.domain.User;

public interface UserDao {
	
	public void insertUser(User user);

	public List<User> getUserList();

	public void updateUser(User user);

	public User getUser(String id);
	
	public User getUserByEmail(String email);


}
