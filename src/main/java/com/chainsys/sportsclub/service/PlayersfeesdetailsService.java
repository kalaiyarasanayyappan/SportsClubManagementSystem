package com.chainsys.sportsclub.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.PlayersFeesDetails;
import com.chainsys.sportsclub.repository.PlayersfeesdetailsRepository;
@Service
public class PlayersfeesdetailsService {
    
    @Autowired
    private PlayersfeesdetailsRepository repo;
    @Autowired
    private PlayersService playersService;
    public List<PlayersFeesDetails> findAllPlayersfeesdetails(){
        List<PlayersFeesDetails> plList= repo.findAll();
        return plList;
    }
   
    public PlayersFeesDetails save(PlayersFeesDetails pl) {
    	PlayersFeesDetails PlayersFeesDetails=repo.save(pl);
        Players player=playersService.findById(pl.getPlayerId());
        player.setSubscriptionDue(player.getSubscriptionDue()-pl.getAmount());
        player.setSubscriptionPaid(player.getSubscriptionPaid()+pl.getAmount());
        playersService.save(player);
        return PlayersFeesDetails;
    }
    public PlayersFeesDetails findById(int id) {
        return repo.findById(id);
    }
  
    public void deleteById(int id) {
        repo.deleteById(id);
    }
}



