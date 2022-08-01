package com.chainsys.sportsclub.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.sportsclub.dao.PlayersRepository;
import com.chainsys.sportsclub.dao.StaffRepository;
import com.chainsys.sportsclub.pojo.Players;
import com.chainsys.sportsclub.pojo.Staff;


@Service
public class PlayersService {
    
    @Autowired
    private PlayersRepository repo;
   
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
}


