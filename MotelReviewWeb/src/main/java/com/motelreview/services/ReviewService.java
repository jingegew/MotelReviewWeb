package com.motelreview.services;

import java.util.List;

import com.motelreview.domain.Review;

public interface ReviewService {
	 public void insertData(Review review);  
	 public List<Review> getReviewList();  
	 public void deleteData(String id);  
	 public Review getReview(String id);  
	 public void updateData(Review review);  
}
