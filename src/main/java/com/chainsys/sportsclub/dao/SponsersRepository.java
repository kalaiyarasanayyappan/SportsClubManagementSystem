package com.chainsys.sportsclub.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.sportsclub.pojo.Sponsers;

public interface SponsersRepository extends CrudRepository<Sponsers,Integer>{
	Sponsers findById(int id);
	Sponsers save(Sponsers sp);
	// Used for both adding new Staff and Modifying new Staff
	void deleteById(int sp_id);
	List <Sponsers> findAll();
}

