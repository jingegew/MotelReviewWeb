package com.motelreview.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the likerts database table.
 * 
 */
@Entity
@Table(name="likerts")
@NamedQuery(name="Likert.findAll", query="SELECT l FROM Likert l")
public class Likert implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private Timestamp created;

	@Column(name="likert_level")
	private String likertLevel;

	@Column(name="review_item")
	private String reviewItem;

	//bi-directional many-to-one association to Review
	@ManyToOne
	private Review review;

	public Likert() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Timestamp getCreated() {
		return this.created;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	public String getLikertLevel() {
		return this.likertLevel;
	}

	public void setLikertLevel(String likertLevel) {
		this.likertLevel = likertLevel;
	}

	public String getReviewItem() {
		return this.reviewItem;
	}

	public void setReviewItem(String reviewItem) {
		this.reviewItem = reviewItem;
	}

	public Review getReview() {
		return this.review;
	}

	public void setReview(Review review) {
		this.review = review;
	}

}