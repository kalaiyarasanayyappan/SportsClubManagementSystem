package com.chainsys.sportsclub.service;
import java.util.Iterator;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.sportsclub.dao.PlayersRepository;
import com.chainsys.sportsclub.dao.PlayersfeesdetailsRepository;
import com.chainsys.sportsclub.dao.StaffRepository;
import com.chainsys.sportsclub.dto.PlayersAndPlayersFeesDetailsDTO;
import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.PlayersFeesDetails;
import com.chainsys.sportsclub.model.Staff;




@Service
public class PlayersService {
    
    @Autowired
    private PlayersRepository repo;
    @Autowired
    private PlayersfeesdetailsRepository prList;
   
    public List<Players> findAllPlayers(){
        List<Players> plList= repo.findAll();
        return plList;
    }
   
    public Players save(Players pl) {
        return repo.save(pl);
        
    }
    public Players findById(int id) {
        return repo.findById(id);
    }
  
    public void deleteById(int id) {
        repo.deleteById(id);
    }
    public PlayersAndPlayersFeesDetailsDTO getAllPlayersfeesdetails(int id)
	{
		Players player=findById(id);
		PlayersAndPlayersFeesDetailsDTO dto= new PlayersAndPlayersFeesDetailsDTO();
		dto.setPlayer(player);
		List<PlayersFeesDetails> feesdetails = prList.getPlayers(id); // method created in repo
		Iterator<PlayersFeesDetails> itr = feesdetails.iterator();
		while(itr.hasNext())
		{
			dto.addPlayersandPlayersfeesdetails((PlayersFeesDetails )itr.next());
			
		}
		return dto;
		
	}
}


