package com.chainsys.sportsclub.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.sportsclub.model.Prizes;
import com.chainsys.sportsclub.model.SponseringDetails;


public interface SponseringdetailsRepository extends CrudRepository<SponseringDetails,Integer>{
	SponseringDetails findById(int sponserdetails);
	SponseringDetails save(SponseringDetails sd);
	// Used for both adding new Staff and Modifying new Staff
	void deleteById(int sd_id);
	List <SponseringDetails> findAll();
	/* SponseringDetails findAllSponserdetails(int id); */
	List<SponseringDetails> findBySponserId(int id);
	List<SponseringDetails> findBySportsId(int id);
}


