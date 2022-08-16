package com.chainsys.sportsclub.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.sportsclub.model.Sports;

@Controller
@RequestMapping("/home")
public class HomeController {
	@PostMapping("/index")
	public String home() {
		
		return "redirect:sportsclub-index";

	}
}
