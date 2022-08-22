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
import com.chainsys.sportsclub.dto.PlayersAndPlayersFeesDetailsDTO;
import com.chainsys.sportsclub.dto.PlayersAndPlayersPrizeDetailsDTO;
import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.service.PlayersService;
import com.chainsys.sportsclub.service.PlayersfeesdetailsService;
import com.chainsys.sportsclub.service.PrizesService;
import com.chainsys.sportsclub.service.SportsService;

@Controller
@RequestMapping("/Players")
public class PlayersController {
	public static final String LISTPLAYERS = "redirect:/Players/getallplayers";

	@Autowired
	PlayersService plService;
	@Autowired
	PrizesService prService;
	@Autowired
	PlayersfeesdetailsService repo;
	@Autowired
	SportsService sp;

	@GetMapping("/getplayers")
	public String getPlayers(@RequestParam("playerId") int id, Model model) {
		Players pl = plService.findById(id);
		model.addAttribute("getplayers", pl);
		return "find-players-id-form";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Players pl = new Players();
		model.addAttribute("addplayers", pl);
		pl.setSubscriptionPaid(pl.getSubscriptionDue() + pl.getSubscriptionPaid());
		return "add-players-form";
	}

	@PostMapping("/add")
	public String addPlayers(@Valid @ModelAttribute("addplayers") Players player, Errors errors) {
		if (errors.hasErrors()) {
			return "add-players-form";
		}

		plService.save(player);
		return LISTPLAYERS;
	}

	@GetMapping("/updateplayers")
	public String showUpdateForm(@RequestParam("playerId") int id, Model model) {
		Players pl = plService.findById(id);
		model.addAttribute("updateplayers", pl);
		return "update-players-form";
	}

	@PostMapping("/update")
	public String modifyPlayers(@Valid @ModelAttribute("updateplayers") Players player, Errors errors) {
		if (errors.hasErrors()) {
			return "update-players-form";
		}

		plService.save(player);
		return LISTPLAYERS;

	}

	@GetMapping("/getallplayers")
	public String getAllPlayers(Model model) {
		List<Players> plList = plService.findAllPlayers();
		model.addAttribute("allplayers", plList);
		return "list-players";
	}

	@GetMapping("/getplayersbyfeesdetails")
	public String getPlayersfessdetails(@RequestParam("id") int id, Model model) {
		PlayersAndPlayersFeesDetailsDTO dto = plService.getAllPlayersfeesdetails(id);
		model.addAttribute("getplayers", dto.getPlayer());
		model.addAttribute("feesdetails", dto.getFeesdetails());
		return "list-players-playersfeesdetails";
	}

	@GetMapping("/getplayersbyprizedetails")
	public String getPlayersprizedetails(@RequestParam("id") int id, Model model) {
		PlayersAndPlayersPrizeDetailsDTO dtp = plService.getAllPlayersPrizedetails(id);
		model.addAttribute("getplay", dtp.getPlay());
		model.addAttribute("prizedetails", dtp.getPrizedetails());
		return "list-players-playersprizedetails";
	}

	@RequestMapping("/deleteplayers")
	public String deletePlayers(@RequestParam("playerId") int id) {
		plService.deleteById(id);
		return LISTPLAYERS;
	}

	@RequestMapping("/updateplayers")
	public String updatePlayers(@RequestParam("playerId") int id) {
		plService.findById(id);
		return LISTPLAYERS;
	}

	@RequestMapping("/getplayers")
	public String findplayers(@RequestParam("playerId") int id) {
		plService.findById(id);
		return LISTPLAYERS;
	}

}
