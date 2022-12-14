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
import com.chainsys.sportsclub.model.Staff;
import com.chainsys.sportsclub.service.StaffService;
@Controller
@RequestMapping("/Staff")
public class StaffController {
	public static final String LISTSTAFF = "redirect:/Staff/getallstaff";
    @Autowired
    StaffService stService; 
    @GetMapping("/getstaff")
    public String getStaff(@RequestParam("staffId")int id,Model model) {
       Staff st =stService.findById(id);
        model.addAttribute("getstaff",st);
        return "find-staff-id-form";
    } 
    @GetMapping("/updatestaff")
    public String updateStaff(@RequestParam("staffId")int id,Model model) {
       Staff st =stService.findById(id);
        model.addAttribute("updatestaff",st);
        return "update-staff-form";
    }
    @GetMapping("/addform")
    public String showAddForm(Model model) {
        Staff st = new Staff();
        model.addAttribute("addstaff",st);
        return "add-staff-form";
    }
    @PostMapping("/add")
    public String addStaff(@Valid @ModelAttribute("addstaff")Staff st,Errors errors)
    {
    	if(errors.hasErrors()) {
			return "add-staff-form";
		}
     stService.save(st);
     return LISTSTAFF;
    }
   
    @PostMapping("/update")
    public String modifyStaff(@Valid @ModelAttribute("updatestaff") Staff st,Errors errors)
    {
    	if(errors.hasErrors()) {
			return "update-staff-form";
		}
        stService.save(st);
     return LISTSTAFF;
     
    }
    @GetMapping("/getallstaff")
    public String getAllStaff(Model model){
        List<Staff> stList= stService.findAllStaff();
        model.addAttribute("allstaff",stList);
        return "list-staff";
    }

    @RequestMapping("/deletestaff")
    public String deleteStaffid(@RequestParam("staffId") int id) {
        stService.deleteById(id);
        return LISTSTAFF;
    }
   
}