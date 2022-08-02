package com.chainsys.sportsclub.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.sportsclub.dao.PlayersRepository;
import com.chainsys.sportsclub.dao.PrizesRepository;
import com.chainsys.sportsclub.dao.StaffRepository;
import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.Prizes;
import com.chainsys.sportsclub.model.Staff;


@Service
public class PrizesService {
    
    @Autowired
    private PrizesRepository repo;
   
    public List<Prizes> findAllPrizes(){
        List<Prizes> prList= repo.findAll();
        return prList;
    }
   
    public Prizes save(Prizes pr) {
        return repo.save(pr);
        
    }
    public Prizes findById(int id) {
        return repo.findById(id);
    }
  
    public void deleteById(int id) {
        repo.deleteById(id);
    }
}



