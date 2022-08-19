package com.chainsys.sportsclub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.sportsclub.model.Adminlogin;
import com.chainsys.sportsclub.repository.AdminloginRepository;
@Service
public class AdminService {
	@Autowired
    private AdminloginRepository repo;
   
    public List<Adminlogin> findAllAdminlogin(){
        return repo.findAll();
    }
    @Transactional
    public Adminlogin save(Adminlogin st) {
        return repo.save(st);
          }
    public Adminlogin findById(int id) {
        return repo.findByadminId(id);
    } 
    @Transactional
    public void deleteById(int id) {
        repo.deleteByadminId(id);
    }
	public Adminlogin getAdminByEmailAndPassword(String adminEmail, String adminPassword) {
		return repo.findByAdminEmailAndAdminPassword(adminEmail,adminPassword);
	}
}
