package com.chainsys.sportsclub.service;
import java.util.Iterator;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.sportsclub.dto.SportsAndPlayersDTO;
import com.chainsys.sportsclub.dto.SportsAndSponseringDetailsDTO;
import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.SponseringDetails;
import com.chainsys.sportsclub.model.Sports;
import com.chainsys.sportsclub.repository.PlayersRepository;
import com.chainsys.sportsclub.repository.SponseringdetailsRepository;
import com.chainsys.sportsclub.repository.SportsRepository;

@Service
public class SportsService {
    
    @Autowired
    private SportsRepository spo;
    @Autowired
    private SponseringdetailsRepository sdr;
    @Autowired
    private PlayersRepository sr;
   
   
    public List<Sports> findAllSports(){
        return spo.findAll();
    }
   
    public Sports save(Sports sp) {
    	spo.save(sp);
        return spo.save(sp);
    }
    public Sports findById(int id) {
        return spo.findById(id);
    }
  
    public void deleteById(int id) {
    	spo.deleteById(id);
    }
    public SportsAndSponseringDetailsDTO getSportsSponsersDetails(int id)
   	{
   		Sports sport=findById(id);
    	SportsAndSponseringDetailsDTO dts= new SportsAndSponseringDetailsDTO();
   		dts.setSport(sport);
   		List<SponseringDetails> sponserdetails =sdr.findBySportsId(id); // method created in repo
   		Iterator<SponseringDetails> itr = sponserdetails.iterator();
   		while(itr.hasNext())
   		{
   			dts.addSponseringDetails((SponseringDetails)itr.next());
   			
   		}
   		return dts;	
   	}
    public SportsAndPlayersDTO getAllSportsplayersdetails(int id)
   	{
   		Sports sport=findById(id);
   		SportsAndPlayersDTO dtp= new SportsAndPlayersDTO();
   		dtp.setSport(sport);
   		List<Players> playerdetails = sr.findBySportsId(id); // method created in repo
   		Iterator<Players> itr = playerdetails.iterator();
   		while(itr.hasNext())
   		{
   			dtp.addPlayersDetails((Players)itr.next());
   			
   		}
   		return dtp;	
   	}
}
