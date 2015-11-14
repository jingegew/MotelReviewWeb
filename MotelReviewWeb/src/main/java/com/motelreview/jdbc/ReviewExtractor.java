package com.motelreview.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import com.motelreview.domain.Review;

public class ReviewExtractor implements ResultSetExtractor<Review> {

	public Review extractData(ResultSet rs) throws SQLException,
			DataAccessException {
		Review review = new Review();
		review.setReviewId(rs.getLong("id"));
		review.setUserId(rs.getLong("user_id"));
		review.setReview(rs.getString("review"));
		review.setLikeStay(rs.getInt("like_stay"));
		review.setRoomNumber(rs.getString("room_number"));
		review.setCustomerId(rs.getLong("customer_id"));
		review.setCreated(rs.getDate("created"));
		//TODO set likerts
		return review;
	}

}