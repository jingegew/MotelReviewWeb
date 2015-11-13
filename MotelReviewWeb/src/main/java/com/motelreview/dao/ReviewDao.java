package com.motelreview.dao;

import java.util.List;

import com.motelreview.domain.Review;

public interface ReviewDao {
	
	public void insertData(Review review);

	public List<Review> getReviewList();

	public void updateData(Review review);

	public void deleteData(String id);

	public Review getReview(String id);
}
