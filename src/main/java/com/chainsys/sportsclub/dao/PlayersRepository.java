package com.chainsys.sportsclub.dao;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.Prizes;

public interface PlayersRepository extends CrudRepository<Players,Integer>{
	Players findById(int id);
	Players save(Players pl);
	// Used for both adding new players and Modifying new players
	void deleteById(int pl_id);
	List <Players> findAll();
	
}

