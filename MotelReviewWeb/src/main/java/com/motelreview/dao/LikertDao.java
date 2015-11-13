package com.motelreview.dao;

import java.util.List;

import com.motelreview.domain.Likert;;

public interface LikertDao {
	
	public void insertLikerts(Likert likert);

	public List<Likert> getLikertsListByReviewId(long reviewId);
}
