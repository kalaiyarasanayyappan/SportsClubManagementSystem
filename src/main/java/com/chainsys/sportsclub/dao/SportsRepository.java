package com.chainsys.sportsclub.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.sportsclub.pojo.Sports;

public interface SportsRepository extends CrudRepository<Sports,Integer>{
	Sports findById(int id);
	Sports save(Sports sp);
	// Used for both adding new Sports and Modifying new Sports
	void deleteById(int sp_id);
	List <Sports> findAll();
}
