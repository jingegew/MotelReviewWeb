package com.motelreview.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.sql.Timestamp;
import java.util.List;


/**
 * The persistent class for the reviews database table.
 * 
 */
@Entity
@Table(name="reviews")
@NamedQuery(name="Review.findAll", query="SELECT r FROM Review r")
public class Review implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private Timestamp created;

	@Temporal(TemporalType.TIMESTAMP)
	private Date modified;

	@Lob
	private String review;

	@Column(name="room_number")
	private String roomNumber;

	//bi-directional many-to-one association to Likert
	@OneToMany(mappedBy="review")
	private List<Likert> likerts;

	//bi-directional many-to-one association to Customer
	@ManyToOne
	private Customer customer;

	//bi-directional many-to-one association to User
	@ManyToOne
	private User user;

	public Review() {
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

	public Date getModified() {
		return this.modified;
	}

	public void setModified(Date modified) {
		this.modified = modified;
	}

	public String getReview() {
		return this.review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getRoomNumber() {
		return this.roomNumber;
	}

	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}

	public List<Likert> getLikerts() {
		return this.likerts;
	}

	public void setLikerts(List<Likert> likerts) {
		this.likerts = likerts;
	}

	public Likert addLikert(Likert likert) {
		getLikerts().add(likert);
		likert.setReview(this);

		return likert;
	}

	public Likert removeLikert(Likert likert) {
		getLikerts().remove(likert);
		likert.setReview(null);

		return likert;
	}

	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}