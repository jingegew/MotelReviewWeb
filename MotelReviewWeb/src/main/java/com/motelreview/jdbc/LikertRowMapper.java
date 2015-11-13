package com.motelreview.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.motelreview.domain.Likert;

public class LikertRowMapper implements RowMapper<Likert> {

	@Override
	public Likert mapRow(ResultSet resultSet, int line) throws SQLException {
		LikertExtractor likertExtractor = new LikertExtractor();
		return likertExtractor.extractData(resultSet);
	}

}
