package com.chainsys.sportsclub.controller;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.sportsclub.dto.SportsAndPlayersDTO;
import com.chainsys.sportsclub.dto.SportsAndSponseringDetailsDTO;
import com.chainsys.sportsclub.model.Sports;
import com.chainsys.sportsclub.service.PlayersService;
import com.chainsys.sportsclub.service.SponseringdetailsService;
import com.chainsys.sportsclub.service.SportsService;

@Controller
@RequestMapping("/Sports")
public class SportsController {

	@Autowired
	SportsService spService;
	@Autowired
	SponseringdetailsService sdService;
	@Autowired
	PlayersService plService;

	@GetMapping("/getsports")
	public String getSports(@RequestParam("sportsId") int id, Model model) {
		Sports sp = spService.findById(id);
		model.addAttribute("getsports", sp);
		return "find-sports-id-form";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Sports sp = new Sports();
		model.addAttribute("addsports", sp);
		return "add-sports-form";
	}

	@PostMapping("/add")
	public String addSports(@Valid @ModelAttribute("addsports") Sports sp,Errors errors) {
		if(errors.hasErrors()) {
			return "add-sports-form";
		}
		spService.save(sp);
		return "redirect:/Sports/getallsports";
	}

	@GetMapping("/updatesports")
	public String showUpdateForm(@RequestParam("id") int id, Model model) {
		Sports sp = spService.findById(id);
		model.addAttribute("updatesports", sp);
		return "update-sports-form";
	}

	@PostMapping("/update")
	public String modifySports(@Valid @ModelAttribute("updatesports") Sports sp,Errors errors) {
		if(errors.hasErrors()) {
			return "update-sports-form";
		}
		spService.save(sp);
		return "redirect:/Sports/getallsports";

	}

	@GetMapping("/getallsports")
	public String getAllSports(Model model) {
		List<Sports> spList = spService.findAllSports();
		model.addAttribute("allsports", spList);
		return "list-sports";
	}
	@GetMapping("/getsportsbysponserdetails")
	public String getSportssponserdetails(@RequestParam("id") int id, Model model) {
		SportsAndSponseringDetailsDTO dts = spService.getSportsSponsersDetails(id);
		model.addAttribute("getsport", dts.getSport());
		model.addAttribute("sponserdetails", dts.getSponserdetail());
		return "list-sports-sportssponserdetails";
	}

	@GetMapping("/getsportsbyplayerdetails")
	public String getSportsplayerdetails(@RequestParam("id") int id, Model model) {
		SportsAndPlayersDTO dts = spService.getAllSportsplayersdetails(id);
		model.addAttribute("getsport", dts.getSport());
		model.addAttribute("playerdetails", dts.getPlayerdetail());
		return "list-sports-sportsplayerdetails";
	}

	@RequestMapping("/deletesportsform")
	public String deleteSportsid(@RequestParam("id") int id) {
		spService.deleteById(id);
		return "redirect:/Sports/getallsports";
	}
	@RequestMapping("/updatesports")
	public String updateSportsid(@RequestParam("id") int id) {
		spService.findById(id);
		return "redirect:/Sports/getallsports";
	}	
}
