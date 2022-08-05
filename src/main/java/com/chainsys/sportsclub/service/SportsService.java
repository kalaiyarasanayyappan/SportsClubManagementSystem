package com.chainsys.sportsclub.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.sportsclub.dao.PlayersRepository;
import com.chainsys.sportsclub.dao.SponseringdetailsRepository;
import com.chainsys.sportsclub.dao.SportsRepository;
import com.chainsys.sportsclub.dto.PlayersAndPlayersPrizeDetailsDTO;
import com.chainsys.sportsclub.dto.SportsAndSponseringDetailsDTO;
import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.Prizes;
import com.chainsys.sportsclub.model.SponseringDetails;
import com.chainsys.sportsclub.model.Sports;

@Service
public class SportsService {
    
    @Autowired
    private SportsRepository spo;
    @Autowired
    private SponseringdetailsRepository sdr;
   
   
    public List<Sports> findAllSports(){
        List<Sports> spList= spo.findAll();
        return spList;
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
   		List<SponseringDetails> sponserdetails =sdr.findBySponserId(id) ; // method created in repo
   		Iterator<SponseringDetails> itr = sponserdetails.iterator();
   		while(itr.hasNext())
   		{
   			dts.addSponseringDetails((SponseringDetails)itr.next());
   			
   		}
   		return dts;	
   	}
    
}
