package com.chainsys.sportsclub.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.sportsclub.model.Adminlogin;
@Repository
public interface AdminloginRepository extends CrudRepository<Adminlogin, String> {
	Adminlogin findByadminId(int id);
	Adminlogin save(Adminlogin st);
	// Used for both adding new admin and Modifying new admin
	void deleteByadminId(int adid);
	List <Adminlogin> findAll();
	Adminlogin findByAdminEmailAndAdminPassword(String adminEmail,String adminPassword);
}
