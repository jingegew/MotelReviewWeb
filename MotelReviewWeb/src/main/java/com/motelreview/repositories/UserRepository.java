package com.motelreview.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.motelreview.entities.User;

public interface UserRepository extends CrudRepository<User, String> {
	List<User> findByEmail(String email);
}
