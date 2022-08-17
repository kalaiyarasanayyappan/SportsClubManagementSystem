package com.chainsys.sportsclub.repository;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.sportsclub.model.SponseringDetails;
public interface SponseringdetailsRepository extends CrudRepository<SponseringDetails,Integer>{
	SponseringDetails findById(int sponserdetails);
	SponseringDetails save(SponseringDetails sd);
	// Used for both adding new sponseringdetails and Modifying new sponseringdetails
	void deleteById(int sd_id);
	List <SponseringDetails> findAll();
	List<SponseringDetails> findBySponserId(int id);
	List<SponseringDetails> findBySportsId(int id);
}


