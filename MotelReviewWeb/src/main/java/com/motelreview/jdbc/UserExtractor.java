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
		user.setFirstName(rs.getString(3));
		//TODO
		return user;
	}

}
