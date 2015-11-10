package com.motelreview.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.motelreview.domain.Review;

public class ReviewRowMapper implements RowMapper<Review> {

	@Override
	public Review mapRow(ResultSet resultSet, int line) throws SQLException {
		ReviewExtractor reviewExtractor = new ReviewExtractor();
		return reviewExtractor.extractData(resultSet);
	}

}