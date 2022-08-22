package com.chainsys.sportsclub.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.sportsclub.model.Adminlogin;
import com.chainsys.sportsclub.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@GetMapping("/adminloginform")
	public String adminLoginForm(Model model) {
		Adminlogin admin = new Adminlogin();
		model.addAttribute("adminlogin", admin);
		return "login";
	}

	@PostMapping("/adminlogin")
	public String adminLogin(@ModelAttribute("adminlogin") Adminlogin admin2) {
		Adminlogin admin1 = adminService.getAdminByEmailAndPassword(admin2.getAdminEmail(), admin2.getAdminPassword());
		
		  if (admin1 != null) { 
			  return "redirect:/home/index"; 
			  } else { 
		  return "redirect:/admin/adminloginform"; 
		  }
	
	}

	@GetMapping("/adminloggedin")
	public String getIndex(Model model) {
		return "admin-logged-in";
	}

}
