package com.chainsys.sportsclub.service;
import java.util.Iterator;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.sportsclub.dto.PlayersAndPlayersFeesDetailsDTO;
import com.chainsys.sportsclub.dto.PlayersAndPlayersPrizeDetailsDTO;
import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.PlayersFeesDetails;
import com.chainsys.sportsclub.model.Prizes;
import com.chainsys.sportsclub.repository.PlayersRepository;
import com.chainsys.sportsclub.repository.PlayersfeesdetailsRepository;
import com.chainsys.sportsclub.repository.PrizesRepository;
@Service
public class PlayersService {
    
    @Autowired
    private PlayersRepository repo;
    @Autowired
    private PlayersfeesdetailsRepository prList;
    @Autowired
    private PrizesRepository pri;
   
    public List<Players> findAllPlayers(){
        return repo.findAll();
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
		List<PlayersFeesDetails> feesdetails = prList.findByPlayerId(id); // method created in repo
		Iterator<PlayersFeesDetails> itr = feesdetails.iterator();
		while(itr.hasNext())
		{
			dto.addPlayersandPlayersfeesdetails(itr.next());
			
		}
		return dto;	
	}
    public PlayersAndPlayersPrizeDetailsDTO getAllPlayersPrizedetails(int id)
   	{
   		Players play=findById(id);
   		PlayersAndPlayersPrizeDetailsDTO dtp= new PlayersAndPlayersPrizeDetailsDTO();
   		dtp.setPlayer(play);
   		List<Prizes> prizedetails = pri.findByPlayerId(id); // method created in repo
   		Iterator<Prizes> itr = prizedetails.iterator();
   		while(itr.hasNext())
   		{
   			dtp.addPlayersandPrizedetails(itr.next());
   			
   		}
   		return dtp;	
   	}
}


