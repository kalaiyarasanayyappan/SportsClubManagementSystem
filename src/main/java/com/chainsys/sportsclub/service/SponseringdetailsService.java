package com.chainsys.sportsclub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.sportsclub.model.SponseringDetails;
import com.chainsys.sportsclub.model.Sponsers;
import com.chainsys.sportsclub.model.Staff;
import com.chainsys.sportsclub.repository.SponseringdetailsRepository;
import com.chainsys.sportsclub.repository.SponsersRepository;
import com.chainsys.sportsclub.repository.StaffRepository;


@Service
public class SponseringdetailsService {
    
    @Autowired
    private SponseringdetailsRepository sr;
   
    public List<SponseringDetails> findAllSponseringdetails(){
        List<SponseringDetails> sdList= sr.findAll();
        return sdList;
    }
   
    public SponseringDetails save(SponseringDetails sd) {
        return sr.save(sd);
        
    }
    public SponseringDetails findById(int id) {
        return sr.findById(id);
    }
  
    public void deleteById(int id) {
        sr.deleteById(id);
    }
}


