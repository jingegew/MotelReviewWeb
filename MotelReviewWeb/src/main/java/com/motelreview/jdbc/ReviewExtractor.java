package com.motelreview.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import com.motelreview.domain.Review;

public class ReviewExtractor implements ResultSetExtractor<Review> {

	public Review extractData(ResultSet resultSet) throws SQLException,
			DataAccessException {
		Review review = new Review();
		review.setReviewId(resultSet.getLong(1));
		review.setUserId(resultSet.getLong(2));
		review.setReview(resultSet.getString(3));
		//TODO set likerts
		return review;
	}

}