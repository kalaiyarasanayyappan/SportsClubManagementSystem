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


import com.chainsys.sportsclub.model.PlayersFeesDetails;


import com.chainsys.sportsclub.service.PlayersfeesdetailsService;


@Controller
@RequestMapping("/Players_Fees_Details")
public class PlayersfeesdetailsController {
    
    @Autowired
    PlayersfeesdetailsService prService;
    
    @GetMapping("/getplayersfeesdetails")
    public String getPlayersfeesdetails(@RequestParam("recieptNumber")int id,Model model) {
       PlayersFeesDetails pr =prService.findById(id);
        model.addAttribute("getplayersfeesdetails",pr);
        return "find-playersfeesdetails-id-form";
    }

	/*
	 * @GetMapping("/deleteplayersfeesdetails") public String
	 * deletePlayersfeesdetails(@RequestParam("id")int id) {
	 * prService.deleteById(id); return
	 * "redirect:/Players_Fees_Details/getallplayersfeesdetails"; }
	 */
    @GetMapping("/addform")
    public String showAddForm(Model model) {
        PlayersFeesDetails pr = new PlayersFeesDetails();
        model.addAttribute("addplayersfeesdetails",pr);
        return "add-playersfeesdetails-form";
    }
    @PostMapping("/add")
    public String addPlayersfeesdetails(@ModelAttribute("addplayersfeesdetails")PlayersFeesDetails pr)
    {
     prService.save(pr);
     return "redirect:/Players_Fees_Details/getallplayersfeesdetails";
    }
    @GetMapping("/updateplayersfeesdetails")
    public String showUpdateForm(@RequestParam("recieptNumber")int id,Model model) {
        PlayersFeesDetails pr = prService.findById(id);
        model.addAttribute("updateplayersfeesdetails",pr);
        return "update-playersfeesdetails-form";
    }
    @PostMapping("/update")
    public String modifyPlayersfeesdetails(@ModelAttribute("updateplayersfeesdetails") PlayersFeesDetails pr)
    {
        prService.save(pr);
     return "redirect:/Players_Fees_Details/getallPlayersfeesdetails";
     
    }
    @GetMapping("/getallplayersfeesdetails")
    public String getAllPlayersfeesdetails(Model model){
        List<PlayersFeesDetails> prList= prService.findAllPlayersfeesdetails();
        model.addAttribute("allplayersfeesdetails",prList);
        return "list-playersfeesdetails";
    }
    @RequestMapping("/getplayersfeesdetailsform")
    public String getPlayersForm() {
        return "get-playersfees";
    }
    @RequestMapping("/updateplayersfeesform")
    public String updatePlayersfeesForm() {
        return "update-playersfees";
    }
    @RequestMapping("/deleteplayersfees")
    public String deletePlayersFees(@RequestParam("recieptNumber") int id) {
        prService.deleteById(id);
        return "redirect:/Players_Fees_Details/getallPlayersfeesdetails";
    }
    @RequestMapping("/deleteplayersfeesdetailsform")
    public String deletePlayersFeesForm() {
        return "delete-playersfees";
    }
}



