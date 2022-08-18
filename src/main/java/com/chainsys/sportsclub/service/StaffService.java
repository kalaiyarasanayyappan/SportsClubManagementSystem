package com.chainsys.sportsclub.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.sportsclub.model.Staff;
import com.chainsys.sportsclub.repository.StaffRepository;
@Service
public class StaffService { 
    @Autowired
    private StaffRepository repo;
   
    public List<Staff> findAllStaff(){
        return repo.findAll();
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

