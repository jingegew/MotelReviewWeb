package com.motelreview.model;

import java.util.Map;

public class ReviewModel {

	private String userId;
	private String review;
	private Map<String, String> likerts;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public Map<String, String> getLikerts() {
		return likerts;
	}

	public void setLikerts(Map<String, String> likerts) {
		this.likerts = likerts;
	}
}
