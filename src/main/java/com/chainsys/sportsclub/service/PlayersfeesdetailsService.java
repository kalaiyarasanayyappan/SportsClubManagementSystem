package com.chainsys.sportsclub.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.sportsclub.dao.PlayersRepository;
import com.chainsys.sportsclub.dao.PlayersfeesdetailsRepository;
import com.chainsys.sportsclub.dao.StaffRepository;
import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.Players_Fees_Details;
import com.chainsys.sportsclub.model.Staff;


@Service
public class PlayersfeesdetailsService {
    
    @Autowired
    private PlayersfeesdetailsRepository repo;
   
    public List<Players_Fees_Details> findAllPlayersfeesdetails(){
        List<Players_Fees_Details> plList= repo.findAll();
        return plList;
    }
   
    public Players_Fees_Details save(Players_Fees_Details pl) {
        return repo.save(pl);
        
    }
    public Players_Fees_Details findById(int id) {
        return repo.findById(id);
    }
  
    public void deleteById(int id) {
        repo.deleteById(id);
    }
}



