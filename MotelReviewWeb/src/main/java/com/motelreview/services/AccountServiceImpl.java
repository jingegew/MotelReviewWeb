package com.motelreview.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.motelreview.dao.UserDao;
import com.motelreview.domain.User;

public class AccountServiceImpl implements AccountService {

	@Autowired
	UserDao userDao;
	
	@Override
	public boolean login(String username, String password) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean resetPassword(String username, String oldPassword,
			String newPassword) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean logout(String username) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		userDao.insertUser(user);
	}

}
