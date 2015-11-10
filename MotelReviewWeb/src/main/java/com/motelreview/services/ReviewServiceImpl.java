package com.motelreview.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.motelreview.dao.ReviewDao;
import com.motelreview.domain.Review;

public class ReviewServiceImpl implements ReviewService {

	@Autowired
	ReviewDao reviewDao;

	@Override
	public void insertData(Review review) {
		//add bussiness logic 
		//for example, if the review is negative, send notification, 
		reviewDao.insertData(review);
	}

	@Override
	public List<Review> getReviewList() {
		return reviewDao.getReviewList();
	}

	public void deleteData(String id) {
		reviewDao.deleteData(id);

	}

	@Override
	public Review getReview(String id) {
		return reviewDao.getReview(id);
	}

	@Override
	public void updateData(Review review) {
		reviewDao.updateData(review);
	}
}
