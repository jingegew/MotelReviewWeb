package com.motelreview.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.motelreview.domain.Review;
import com.motelreview.jdbc.ReviewRowMapper;

public class ReviewDaoImpl implements ReviewDao {

	@Autowired
	DataSource dataSource;

	public void insertData(Review review) {
		//TODO, user id£¬ likerts
		String sql = "INSERT INTO reviews "
				+ "(customer_id,review) VALUES (?, ?)";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(sql,
				new Object[] { review.getCustomerId(), review.getReview() });

	}

	public List<Review> getReviewList() {
		String sql = "select * from reviews";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		List<Review> reviewList = jdbcTemplate
				.query(sql, new ReviewRowMapper());
		return reviewList;
	}

	@Override
	public void deleteData(String id) {
		String sql = "delete from user where review_id=" + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sql);

	}

	@Override
	public void updateData(Review review) {

		String sql = "UPDATE user set first_name = ?,last_name = ?, gender = ?, city = ? where user_id = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(sql, new Object[] { review.getReview() });

	}

	@Override
	public Review getReview(String id) {
		String sql = "select * from reviews where review_id = " + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		List<Review> userList = jdbcTemplate.query(sql, new ReviewRowMapper());
		return userList.get(0);
	}
}
