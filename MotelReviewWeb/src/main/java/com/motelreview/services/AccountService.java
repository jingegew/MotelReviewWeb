package com.motelreview.services;

public interface AccountService {
	
	 public boolean login(String username, String password);  
	 public boolean resetPassword(String username, String oldPassword, String newPassword);  
	 public boolean logout(String username);  
}
