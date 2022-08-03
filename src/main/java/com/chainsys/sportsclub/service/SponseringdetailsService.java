package com.chainsys.sportsclub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.sportsclub.dao.SponseringdetailsRepository;
import com.chainsys.sportsclub.dao.SponsersRepository;
import com.chainsys.sportsclub.dao.StaffRepository;
import com.chainsys.sportsclub.model.SponseringDetails;
import com.chainsys.sportsclub.model.Sponsers;
import com.chainsys.sportsclub.model.Staff;


@Service
public class SponseringdetailsService {
    
    @Autowired
    private SponseringdetailsRepository repo;
   
    public List<SponseringDetails> findAllSponseringdetails(){
        List<SponseringDetails> sdList= repo.findAll();
        return sdList;
    }
   
    public SponseringDetails save(SponseringDetails sd) {
        return repo.save(sd);
        
    }
    public SponseringDetails findById(int id) {
        return repo.findById(id);
    }
  
    public void deleteById(int id) {
        repo.deleteById(id);
    }
}


