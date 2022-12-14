package com.chainsys.sportsclub.repository;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.sportsclub.model.Sports;

public interface SportsRepository extends CrudRepository<Sports,Integer>{
	Sports findById(int id);
	Sports save(Sports sp);
	// Used for both adding new Sports and Modifying new Sports
	void deleteById(int spid);
	List <Sports> findAll();
}
