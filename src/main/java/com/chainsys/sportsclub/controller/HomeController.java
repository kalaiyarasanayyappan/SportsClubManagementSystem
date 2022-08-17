package com.chainsys.sportsclub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomeController {
	@PostMapping("/index")
	public String home() {
		
		return "redirect:sportsclub-index";

	}
}
