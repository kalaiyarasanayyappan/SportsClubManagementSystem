package com.chainsys.sportsclub.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.sportsclub.model.SponseringDetails;


public interface SponseringdetailsRepository extends CrudRepository<SponseringDetails,Integer>{
	SponseringDetails findById(int id);
	SponseringDetails save(SponseringDetails sd);
	// Used for both adding new Staff and Modifying new Staff
	void deleteById(int sd_id);
	List <SponseringDetails> findAll();
}


