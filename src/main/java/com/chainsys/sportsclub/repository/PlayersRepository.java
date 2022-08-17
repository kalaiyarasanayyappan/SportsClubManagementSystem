package com.chainsys.sportsclub.repository;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.sportsclub.model.Players;
public interface PlayersRepository extends CrudRepository<Players,Integer>{
	Players findById(int player);
	Players save(Players pl);
	// Used for both adding new players and Modifying new players
	void deleteById(int pl_id);
	List <Players> findAll();
	List<Players> findBySportsId(int id);
}

