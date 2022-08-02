package com.chainsys.sportsclub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.chainsys.sportsclub.dao.SportsRepository;
import com.chainsys.sportsclub.model.Sports;

@Service
public class SportsService {
    
    @Autowired
    private SportsRepository repo;
   
    public List<Sports> findAllSports(){
        List<Sports> spList= repo.findAll();
        return spList;
    }
   
    public Sports save(Sports sp) {
        repo.save(sp);
        return repo.save(sp);
    }
    public Sports findById(int id) {
        return repo.findById(id);
    }
  
    public void deleteById(int id) {
        repo.deleteById(id);
    }
}
