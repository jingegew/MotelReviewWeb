package com.motelreview.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.motelreview.domain.User;

public class UserExtractor implements ResultSetExtractor<User> {

	@Override
	public User extractData(ResultSet rs) throws SQLException,
			DataAccessException {
		User user = new User();
		user.setUserId(rs.getLong("id"));
		user.setFirstName(rs.getString("first_name"));
		user.setLastName(rs.getString("last_name"));
		user.setCustomerId(rs.getLong("customer_id"));
		user.setEmail(rs.getString("email"));
		user.setUsername(rs.getString("username"));
		user.setUserType(rs.getString("user_type"));
		user.setPhone(rs.getString("phone"));
		//TODO
		return user;
	}

}
