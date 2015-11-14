package com.motelreview.domain;

import java.util.Date;
import java.util.List;

public class Review {
	
	private long reviewId;
	private long userId;
	private long customerId;
	private String roomNumber;
	private String review;
	private List<Likert> likerts;
	//0 means don't like, 1 means like, -1 means no answer
	private int likeStay;
	
	private Date created;

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

	public String getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}

	public int getLikeStay() {
		return likeStay;
	}

	public void setLikeStay(int likeStay) {
		this.likeStay = likeStay;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}
}
