package com.motelreview.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.motelreview.entities.Customer;

public interface CustomerRepository extends CrudRepository<Customer, String> {
	List<Customer> findByLastName(String lastName);
}
