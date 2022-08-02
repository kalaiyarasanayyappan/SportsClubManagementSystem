package com.chainsys.sportsclub.dao;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.Players_Fees_Details;

public interface PlayersfeesdetailsRepository extends CrudRepository<Players_Fees_Details,Integer>{
	Players_Fees_Details findById(int id);
	Players_Fees_Details save(Players_Fees_Details pl);
	// Used for both adding new playersfeesdetails and Modifying new playersfeesdetails
	void deleteById(int pl_id);
	List <Players_Fees_Details> findAll();
}

