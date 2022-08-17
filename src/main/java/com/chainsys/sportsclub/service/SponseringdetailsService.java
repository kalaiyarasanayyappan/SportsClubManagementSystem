package com.chainsys.sportsclub.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.sportsclub.model.SponseringDetails;
import com.chainsys.sportsclub.repository.SponseringdetailsRepository;
@Service
public class SponseringdetailsService {
    @Autowired
    private SponseringdetailsRepository sr;
   
    public List<SponseringDetails> findAllSponseringdetails(){
        return sr.findAll();
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


