package com.chainsys.sportsclub.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.sportsclub.pojo.Sponsering_Details;


public interface SponseringdetailsRepository extends CrudRepository<Sponsering_Details,Integer>{
	Sponsering_Details findById(int id);
	Sponsering_Details save(Sponsering_Details sd);
	// Used for both adding new Staff and Modifying new Staff
	void deleteById(int sd_id);
	List <Sponsering_Details> findAll();
}


