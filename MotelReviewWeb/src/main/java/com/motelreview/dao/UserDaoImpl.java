package com.motelreview.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.motelreview.domain.User;
import com.motelreview.jdbc.UserRowMapper;

public class UserDaoImpl implements UserDao {
	
	@Autowired
	DataSource dataSource;

	@Override
	public void insertUser(User user) {		
		/*
		`username` varchar(50) DEFAULT NULL,
		  `password` varchar(255) DEFAULT NULL,
		  `customer_id` bigint(20) unsigned DEFAULT NULL,
		  `user_type` varchar(45) DEFAULT NULL,
		  `email` varchar(50) DEFAULT NULL,*/
		
		String sql = "INSERT INTO users "
				+ "(first_name, last_name, user_type, email, phone) VALUES (?, ?, ?, ? ,?)";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(sql,
				new Object[] { user.getFirstName(), user.getLastName(), user.getUserType(), user.getEmail(), user.getPhone() });	
		SqlRowSet rs = jdbcTemplate.queryForRowSet("SELECT id FROM users ORDER BY id DESC LIMIT 1;");
		if(rs.first()){
			user.setUserId(rs.getLong(1));		
		}
	}

	@Override
	public List<User> getUserList() {
		String sql = "select * from reviews";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		return jdbcTemplate.query(sql, new UserRowMapper());
	}

	@Override
	public void updateUser(User user) {
		String sql = "UPDATE users set first_name = ?,last_name = ?, , city = ? where user_id = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		//TODO
		jdbcTemplate.update(sql, new Object[] { user.getPassword() });		
	}

	@Override
	public User getUser(String id) {
		String sql = "select * from users where user_id = " + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		List<User> userList = jdbcTemplate.query(sql, new UserRowMapper());
		return userList.get(0);
	}

}
