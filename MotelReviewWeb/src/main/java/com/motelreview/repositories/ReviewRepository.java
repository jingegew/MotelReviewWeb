package com.motelreview.repositories;

import org.springframework.data.repository.CrudRepository;

import com.motelreview.entities.Review;

public interface ReviewRepository extends CrudRepository<Review, String> {
}
