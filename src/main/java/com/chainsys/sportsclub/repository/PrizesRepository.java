package com.chainsys.sportsclub.repository;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.PlayersFeesDetails;
import com.chainsys.sportsclub.model.Prizes;

public interface PrizesRepository extends CrudRepository<Prizes,Integer>{
	Prizes findById(int prize);
	Prizes save(Prizes pr);
	// Used for both adding new prizes and Modifying new prizes
	void deleteById(int pr_id);
	List <Prizes> findAll();
	List<Prizes> findByPlayerId(int id);
}

