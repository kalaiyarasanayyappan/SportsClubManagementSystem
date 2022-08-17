package com.chainsys.sportsclub.repository;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.sportsclub.model.Sponsers;

public interface SponsersRepository extends CrudRepository<Sponsers,Integer>{
	Sponsers findById(int id);
	Sponsers save(Sponsers sp);
	// Used for both adding new sponsers and Modifying new sponsers
	void deleteById(int sp_id);
	List <Sponsers> findAll();
}

