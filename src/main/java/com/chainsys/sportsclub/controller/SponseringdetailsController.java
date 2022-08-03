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

import com.chainsys.sportsclub.model.SponseringDetails;
import com.chainsys.sportsclub.model.Staff;
import com.chainsys.sportsclub.service.SponseringdetailsService;
import com.chainsys.sportsclub.service.StaffService;

@Controller
@RequestMapping("/Sponsering_Details")
public class SponseringdetailsController {
    
    @Autowired
    SponseringdetailsService sdService;
    
    @GetMapping("/getsponseringdetails")
    public String getsponseringdetails(@RequestParam("id")int id,Model model) {
       SponseringDetails sd =sdService.findById(id);
        model.addAttribute("getsponseringdetails",sd);
        return "find-sponseringdetails-id-form";
    }
    @GetMapping("/deletesponseringdetails")
    public String deleteSponseringdetails(@RequestParam("id")int id) {
        sdService.deleteById(id);
         return "redirect:/Sponsering_Details/getallsponseringdetails";
    }
    @GetMapping("/addform")
    public String showAddForm(Model model) {
        SponseringDetails sd = new SponseringDetails();
        model.addAttribute("addsponseringdetails",sd);
        return "add-sponseringdetails-form";
    }
    @PostMapping("/add")
    public String addSponseringdetails(@ModelAttribute("addsponseringdetails")SponseringDetails sd)
    {
     sdService.save(sd);
     return "redirect:/Sponsering_Details/getallsponseringdetails";
    }
    @GetMapping("/updateform")
    public String showUpdateForm(@RequestParam("id")int id,Model model) {
        SponseringDetails sd = sdService.findById(id);
        model.addAttribute("updatesponseringdetails",sd);
        return "update-sponseringdetails-form";
    }
    @PostMapping("/update")
    public String modifySponseringdetails(@ModelAttribute("updatesponseringdetails") SponseringDetails sd)
    {
        sdService.save(sd);
     return "redirect:/Sponsering_Details/getallsponseringdetails";
     
    }
    @GetMapping("/getallsponseringdetails")
    public String getAllSponseringdetails(Model model){
        List<SponseringDetails> sdList= sdService.findAllSponseringdetails();
        model.addAttribute("allsponseringdetails",sdList);
        return "list-sponseringdetails";
    }
}


