package com.motelreview.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.motelreview.domain.Likert;
import com.motelreview.jdbc.LikertRowMapper;

public class LikertDaoImpl implements LikertDao {
	
	@Autowired
	DataSource dataSource;
	@Override
	public void insertLikerts(Likert likert) {
	
		String sql = "INSERT INTO likerts "
				+ "(review_id, review_item, likert_level) VALUES (?, ?, ?)";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(sql,
				new Object[] { likert.getReviewId(), likert.getItem(), likert.getValue() });	
	}

	@Override
	public List<Likert> getLikertsListByReviewId(long reviewId) {	
		String sql = "select * from likerts where review_id = " + reviewId;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		List<Likert> likertList = jdbcTemplate.query(sql, new LikertRowMapper());
		return likertList;
	}

}
