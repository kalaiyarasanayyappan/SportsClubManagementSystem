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

import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.Players_Fees_Details;
import com.chainsys.sportsclub.model.Prizes;
import com.chainsys.sportsclub.service.PlayersService;
import com.chainsys.sportsclub.service.PlayersfeesdetailsService;
import com.chainsys.sportsclub.service.PrizesService;

@Controller
@RequestMapping("/Players_Fees_Details")
public class PlayersfeesdetailsController {
    
    @Autowired
    PlayersfeesdetailsService prService;
    
    @GetMapping("/getplayersfeesdetails")
    public String getPlayersfeesdetails(@RequestParam("id")int id,Model model) {
       Players_Fees_Details pr =prService.findById(id);
        model.addAttribute("getplayersfeesdetails",pr);
        return "find-playersfeesdetails-id-form";
    }
    @GetMapping("/deleteplayersfeesdetails")
    public String deletePlayersfeesdetails(@RequestParam("id")int id) {
        prService.deleteById(id);
         return "redirect:/Players_Fees_Details/getallplayersfeesdetails";
    }
    @GetMapping("/addform")
    public String showAddForm(Model model) {
        Players_Fees_Details pr = new Players_Fees_Details();
        model.addAttribute("addplayersfeesdetails",pr);
        return "add-playersfeesdetails-form";
    }
    @PostMapping("/add")
    public String addPlayersfeesdetails(@ModelAttribute("addplayersfeesdetails")Players_Fees_Details pr)
    {
     prService.save(pr);
     return "redirect:/Players_Fees_Details/getallplayersfeesdetails";
    }
    @GetMapping("/updateform")
    public String showUpdateForm(@RequestParam("id")int id,Model model) {
        Players_Fees_Details pr = prService.findById(id);
        model.addAttribute("updateplayersfeesdetails",pr);
        return "update-playersfeesdetails-form";
    }
    @PostMapping("/update")
    public String modifyPlayersfeesdetails(@ModelAttribute("updateplayersfeesdetails") Players_Fees_Details pr)
    {
        prService.save(pr);
     return "redirect:/Players_Fees_Details/getallPlayersfeesdetails";
     
    }
    @GetMapping("/getallplayersfeesdetails")
    public String getAllPlayersfeesdetails(Model model){
        List<Players_Fees_Details> prList= prService.findAllPlayersfeesdetails();
        model.addAttribute("allplayersfeesdetails",prList);
        return "list-playersfeesdetails";
    }
}



