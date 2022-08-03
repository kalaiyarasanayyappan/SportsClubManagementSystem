package com.chainsys.sportsclub.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.sportsclub.dao.PlayersRepository;
import com.chainsys.sportsclub.dao.PlayersfeesdetailsRepository;
import com.chainsys.sportsclub.dao.StaffRepository;
import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.PlayersFeesDetails;
import com.chainsys.sportsclub.model.Staff;


@Service
public class PlayersfeesdetailsService {
    
    @Autowired
    private PlayersfeesdetailsRepository repo;
   
    public List<PlayersFeesDetails> findAllPlayersfeesdetails(){
        List<PlayersFeesDetails> plList= repo.findAll();
        return plList;
    }
   
    public PlayersFeesDetails save(PlayersFeesDetails pl) {
        return repo.save(pl);
        
    }
    public PlayersFeesDetails findById(int id) {
        return repo.findById(id);
    }
  
    public void deleteById(int id) {
        repo.deleteById(id);
    }
}



