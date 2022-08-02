package com.chainsys.sportsclub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.sportsclub.dao.SponseringdetailsRepository;
import com.chainsys.sportsclub.dao.SponsersRepository;
import com.chainsys.sportsclub.dao.StaffRepository;
import com.chainsys.sportsclub.model.Sponsering_Details;
import com.chainsys.sportsclub.model.Sponsers;
import com.chainsys.sportsclub.model.Staff;


@Service
public class SponseringdetailsService {
    
    @Autowired
    private SponseringdetailsRepository repo;
   
    public List<Sponsering_Details> findAllSponseringdetails(){
        List<Sponsering_Details> sdList= repo.findAll();
        return sdList;
    }
   
    public Sponsering_Details save(Sponsering_Details sd) {
        return repo.save(sd);
        
    }
    public Sponsering_Details findById(int id) {
        return repo.findById(id);
    }
  
    public void deleteById(int id) {
        repo.deleteById(id);
    }
}


