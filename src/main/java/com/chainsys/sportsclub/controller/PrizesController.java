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
import com.chainsys.sportsclub.model.Prizes;
import com.chainsys.sportsclub.service.PrizesService;

@Controller
@RequestMapping("/Prizes")
public class PrizesController {
	public static final String LISTPRIZES = "redirect:/Prizes/getallprizes";
    
    @Autowired
    PrizesService prService;
    
    @GetMapping("/getprizes")
    public String getPrizes(@RequestParam("prizeId")int id,Model model) {
       Prizes pr =prService.findById(id);
        model.addAttribute("getprizes",pr);
        return "find-prizes-id-form";
    }
    @GetMapping("/deleteprizes")
    public String deletePrizes(@RequestParam("prizeId")int id) {
        prService.deleteById(id);
         return LISTPRIZES;
    }
    @GetMapping("/addform")
    public String showAddForm(Model model) {
        Prizes pr = new Prizes();
        model.addAttribute("addprizes",pr);
        return "add-prizes-form";
    }
    @PostMapping("/add")
    public String addPrizes(@ModelAttribute("addprizes")Prizes pr)
    {
     prService.save(pr);
     return LISTPRIZES;
    }
    @GetMapping("/updateprizes")
    public String showUpdateForm(@RequestParam("prizeId")int id,Model model) {
        Prizes pr = prService.findById(id);
        model.addAttribute("updateprizes",pr);
        return "update-prizes-form";
    }
    @PostMapping("/update")
    public String updatePrize(@ModelAttribute("updateprizes") Prizes prize)
    {
        prService.save(prize);
     return LISTPRIZES;
     
    }
    @GetMapping("/getallprizes")
    public String getAllPrizes(Model model){
        List<Prizes> prList= prService.findAllPrizes();
        model.addAttribute("allprizes",prList);
        return "list-prizes";
    }
    
}



