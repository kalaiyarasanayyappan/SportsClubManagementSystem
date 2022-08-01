package com.chainsys.sportsclub.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.sportsclub.pojo.Staff;

public interface StaffRepository extends CrudRepository<Staff,Integer>{
	Staff findById(int id);
	Staff save(Staff st);
	// Used for both adding new Staff and Modifying new Staff
	void deleteById(int st_id);
	List <Staff> findAll();
}
