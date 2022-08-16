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

import com.chainsys.sportsclub.dto.PlayersAndPlayersPrizeDetailsDTO;
import com.chainsys.sportsclub.dto.SponsersAndSponseringDetailsDTO;
import com.chainsys.sportsclub.model.Sponsers;
import com.chainsys.sportsclub.service.SponseringdetailsService;
import com.chainsys.sportsclub.service.SponsersService;

@Controller
@RequestMapping("/Sponsers")
public class SponsersController {
    
    @Autowired
    SponsersService spService;
    @Autowired
    SponseringdetailsService sp;
    
    @GetMapping("/getsponsers")
    public String getSponsers(@RequestParam("sponserId")int id,Model model) {
       Sponsers sp =spService.findById(id);
        model.addAttribute("getsponsers",sp);
        return "find-sponsers-id-form";
    }
    @GetMapping("/deletesponsers")
    public String deletesponsers(@RequestParam("sponserId")int id) {
        spService.deleteById(id);
         return "redirect:/Sponsers/getallsponsers";
    }
    @GetMapping("/addform")
    public String showAddForm(Model model) {
        Sponsers sp = new Sponsers();
        model.addAttribute("addsponsers",sp);
        return "add-sponsers-form";
    }
    @PostMapping("/add")
    public String addSponsers(@Valid @ModelAttribute("addsponsers")Sponsers sp,Errors errors)
    {
    	if(errors.hasErrors()) {
			return "add-sponsers-form";
		}
     spService.save(sp);
     return "redirect:/Sponsers/getallsponsers";
    }
    @GetMapping("/updatesponsers")
    public String showUpdateForm(@RequestParam("sponserId")int id,Model model) {
        Sponsers st = spService.findById(id);
        model.addAttribute("updatesponsers",st);
        return "update-sponsers-form";
    }
    @PostMapping("/update")
    public String modifysponsers(@Valid @ModelAttribute("updatesponsers") Sponsers sp,Errors errors)
    {
    	if(errors.hasErrors()) {
		return "update-sponsers-form";
	}
        spService.save(sp);
     return "redirect:/Sponsers/getallsponsers";
     
    }
    @GetMapping("/getallsponsers")
    public String getAllSponsers(Model model){
        List<Sponsers> spList= spService.findAllSponsers();
        model.addAttribute("allsponsers",spList);
        return "list-sponsers";
    }
    @GetMapping("/getsponserssponseringdetails")
    public String getsponseringdetails(@RequestParam("id") int id,Model model) {
    	SponsersAndSponseringDetailsDTO dts =spService.getAllSponsersponseringdetails( id);
        model.addAttribute("spons" ,dts.getSpons());
        model.addAttribute("sponserdetails",dts.getSponserdetail());
        return "list-Sponsers-sponseringdetails";
    }
    @RequestMapping("/updatesponsersform")
    public String UpdateSponserForm() {
        return "update-sponsers";
    }

    @RequestMapping("/getsponsersform")
    public String getsponsersForm() {
        return "get-sponsers";
    }
    @RequestMapping("/deletesponserform")
    public String deletesponsersForm() {
        return "delete-sponsers";
    }
    @RequestMapping("/getsponserssponseringdetails")
    public String getsponserssponseringForm() {
        return "get-sponserssponseringdetails";
    }
    
}


