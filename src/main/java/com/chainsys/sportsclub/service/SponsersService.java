package com.chainsys.sportsclub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.sportsclub.dao.SponsersRepository;
import com.chainsys.sportsclub.dao.StaffRepository;
import com.chainsys.sportsclub.pojo.Sponsers;
import com.chainsys.sportsclub.pojo.Staff;


@Service
public class SponsersService {
    
    @Autowired
    private SponsersRepository repo;
   
    public List<Sponsers> findAllSponsers(){
        List<Sponsers> spList= repo.findAll();
        return spList;
    }
   
    public Sponsers save(Sponsers st) {
        return repo.save(st);
        
    }
    public Sponsers findById(int id) {
        return repo.findById(id);
    }
  
    public void deleteById(int id) {
        repo.deleteById(id);
    }
}


