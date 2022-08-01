package com.chainsys.sportsclub.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.sportsclub.pojo.Sponsers;

import com.chainsys.sportsclub.service.SponsersService;

@Controller
@RequestMapping("/Sponsers")
public class SponsersController {
    
    @Autowired
    SponsersService spService;
    
    @GetMapping("/getsponsers")
    public String getSponsers(@RequestParam("id")int id,Model model) {
       Sponsers sp =spService.findById(id);
        model.addAttribute("getsponsers",sp);
        return "find-sponsers-id-form";
    }
    @GetMapping("/deletesponsers")
    public String deletesponsers(@RequestParam("id")int id) {
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
    public String addSponsers(@ModelAttribute("addsponsers")Sponsers sp)
    {
     spService.save(sp);
     return "redirect:/Sponsers/getallsponsers";
    }
    @GetMapping("/updateform")
    public String showUpdateForm(@RequestParam("id")int id,Model model) {
        Sponsers st = spService.findById(id);
        model.addAttribute("updatesponsers",st);
        return "update-sponsers-form";
    }
    @PostMapping("/update")
    public String modifysponsers(@ModelAttribute("updatesponsers") Sponsers sp)
    {
        spService.save(sp);
     return "redirect:/Sponsers/getallsponsers";
     
    }
    @GetMapping("/getallsponsers")
    public String getAllSponsers(Model model){
        List<Sponsers> spList= spService.findAllSponsers();
        model.addAttribute("allsponsers",spList);
        return "list-sponsers";
    }
}


