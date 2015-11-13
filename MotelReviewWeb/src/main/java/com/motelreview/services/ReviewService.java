package com.motelreview.services;

import java.util.List;

import com.motelreview.domain.Likert;
import com.motelreview.domain.Review;

public interface ReviewService {
	 public void insertReview(Review review);  
	 public void addLikert(Likert likert);  
	 public List<Likert> getLikertList(long reviewId);  	 
	 public List<Review> getReviewList();  
	 public void deleteData(String id);  
	 public Review getReview(String id);  
	 public void updateData(Review review);  
}
