package com.chainsys.sportsclub.repository;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.PlayersFeesDetails;

public interface PlayersfeesdetailsRepository extends CrudRepository<PlayersFeesDetails,Integer>{
	PlayersFeesDetails findById(int id);
	PlayersFeesDetails save(PlayersFeesDetails pl);
	// Used for both adding new playersfeesdetails and Modifying new playersfeesdetails
	void deleteById(int pl_id);
	List <PlayersFeesDetails> findAll();
	List<PlayersFeesDetails> findByPlayerId(int id);
}

