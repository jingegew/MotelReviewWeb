package com.motelreview.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.motelreview.domain.Likert;

public class LikertExtractor implements ResultSetExtractor<Likert> {

	@Override
	public Likert extractData(ResultSet rs) throws SQLException,
			DataAccessException {
		Likert likert = new Likert();
		likert.setId(rs.getLong(1));
		likert.setReviewId(rs.getLong(2));
		likert.setItem(rs.getString(3));
		likert.setValue(rs.getString(4));
		likert.setCreated(rs.getDate(5));
		return likert;
	}

}
