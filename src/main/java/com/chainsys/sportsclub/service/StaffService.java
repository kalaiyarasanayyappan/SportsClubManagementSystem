package com.chainsys.sportsclub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.sportsclub.dao.StaffRepository;
import com.chainsys.sportsclub.model.Staff;


@Service
public class StaffService {
    
    @Autowired
    private StaffRepository repo;
   
    public List<Staff> findAllStaff(){
        List<Staff> stList= repo.findAll();
        return stList;
    }
   
    public Staff save(Staff st) {
        return repo.save(st);
        
    }
    public Staff findById(int id) {
        return repo.findById(id);
    }
  
    public void deleteById(int id) {
        repo.deleteById(id);
    }
}

