package com.motelreview.services;

import com.motelreview.domain.User;

public interface AccountService {
	
	 public boolean login(String username, String password);  
	 public boolean resetPassword(String username, String oldPassword, String newPassword);  
	 public boolean logout(String username);  
	 public void addUser(User user);
	 public User findUserByEmail(String email);
}
