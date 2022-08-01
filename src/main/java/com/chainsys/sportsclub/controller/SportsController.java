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

import com.chainsys.sportsclub.pojo.Sports;
import com.chainsys.sportsclub.service.SportsService;

@Controller
@RequestMapping("/Sports")
public class SportsController {
    
    @Autowired
    SportsService spService;
    
    @GetMapping("/getsports")
    public String getSports(@RequestParam("id")int id,Model model) {
       Sports sp =spService.findById(id);
        model.addAttribute("getsports",sp);
        return "find-sports-id-form";
    }
    @GetMapping("/deletesports")
    public String deleteSports(@RequestParam("id")int id) {
        spService.deleteById(id);
         return "redirect:/Sports/getallsports";
    }
    @GetMapping("/addform")
    public String showAddForm(Model model) {
        Sports sp = new Sports();
        model.addAttribute("addsports",sp);
        return "add-sports-form";
    }
    @PostMapping("/add")
    public String addSports(@ModelAttribute("addsports")Sports sp)
    {
     spService.save(sp);
     return "redirect:/Sports/getallsports";
    }
    @GetMapping("/updateform")
    public String showUpdateForm(@RequestParam("id")int id,Model model) {
        Sports sp = spService.findById(id);
        model.addAttribute("updatesports",sp);
        return "update-sports-form";
    }
    @PostMapping("/update")
    public String modifySports(@ModelAttribute("updatesports") Sports sp)
    {
        spService.save(sp);
     return "redirect:/Sports/getallsports";
     
    }
    @GetMapping("/getallsports")
    public String getAllSports(Model model){
        List<Sports> spList= spService.findAllSports();
        model.addAttribute("allsports",spList);
        return "list-sports";
    }
}
