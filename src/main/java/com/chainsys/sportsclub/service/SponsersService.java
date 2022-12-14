package com.chainsys.sportsclub.service;
import java.util.Iterator;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.sportsclub.dto.SponsersAndSponseringDetailsDTO;
import com.chainsys.sportsclub.model.SponseringDetails;
import com.chainsys.sportsclub.model.Sponsers;
import com.chainsys.sportsclub.repository.SponseringdetailsRepository;
import com.chainsys.sportsclub.repository.SponsersRepository;
@Service
public class SponsersService {
    @Autowired
    private SponsersRepository repo;
    @Autowired
    private SponseringdetailsRepository sp;
   
    public List<Sponsers> findAllSponsers(){
        return repo.findAll();
    }
   
    public Sponsers save(Sponsers st) {
        return repo.save(st);
        
    }
    public Sponsers findById(int id) {
        return repo.findById(id);
    }
  
    public void deleteById(int id) {
        repo.deleteById(id);
    }
    public SponsersAndSponseringDetailsDTO getAllSponsersponseringdetails(int id)
   	{
   		Sponsers spons=findById(id);
   		SponsersAndSponseringDetailsDTO dts= new SponsersAndSponseringDetailsDTO();
   		dts.setSpons(spons);
   		List<SponseringDetails> sponserdetails = sp.findBySponserId(id) ;// method created in repo
   		Iterator<SponseringDetails> itr = sponserdetails.iterator();
   		while(itr.hasNext())
   		{
   			dts.addSponsersandSponseringdetails(itr.next());
   		}
   		return dts;	
   	}
   		
   	}



