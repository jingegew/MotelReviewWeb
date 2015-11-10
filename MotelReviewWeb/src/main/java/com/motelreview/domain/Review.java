package com.motelreview.domain;

import java.util.List;

public class Review {
	private long reviewId;
	private long userId;
	private long customerId;
	private String review;
	private List<Likert> likerts;

	public long getReviewId() {
		return reviewId;
	}

	public void setReviewId(long reviewId) {
		this.reviewId = reviewId;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(long customerId) {
		this.customerId = customerId;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public List<Likert> getLikerts() {
		return likerts;
	}

	public void setLikerts(List<Likert> likerts) {
		this.likerts = likerts;
	}

}
