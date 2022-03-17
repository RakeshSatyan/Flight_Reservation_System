package com.rakesh.flightreservation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rakesh.flightreservation.bo.AdminBo;
import com.rakesh.flightreservation.bo.FlightBo;
import com.rakesh.flightreservation.bo.UserBo;
import com.rakesh.flightreservation.model.Flight;
import com.rakesh.flightreservation.model.User;



@Controller
public class AdminController {
	
	@Autowired
	AdminBo abo;
	@Autowired
	UserBo ubo;
	@Autowired
	FlightBo fbo;
	
	@RequestMapping("/showAdminLogin")
	public String showAdminLogin() {
		return "adminLogin";
		
	}
	
	@RequestMapping(value="/validateAdminLogin", method = RequestMethod.POST)
	public String validateAdminLogin(@RequestParam("email") String email, @RequestParam("password") String password,
			ModelMap modelMap) {
		
		if ("admin123".equals(password)&&"admin@admin.com".equals(email)) {
			return "adminViewPage";
		} else {
			modelMap.addAttribute("msg", "Invalid username or password please try again");
		}
		return "adminLogin";
	}
	
	@RequestMapping("/adminViewUsers")
	public String adminViewUsers(ModelMap modelMap) {
		List<User> users =ubo.findAll() ;
		modelMap.addAttribute("users", users);
		return "displayUsersForAdmin";
		
	}
	@RequestMapping("/adminViewFlight")
	public String adminViewFlight() {
		return "adminViewFlight";
		
	}
	@RequestMapping("/addFlightsAdmin")
	public String addFlightsAdmin() {
		return "addFlightsAdmin";
		
	}
	
	@RequestMapping(value ="/addFlights", method = RequestMethod.POST)
	public String addFlights(@ModelAttribute("flight") Flight flight) {
		fbo.save(flight);
		return "adminViewFlight";
		
	}
	@RequestMapping("/adminViewAllFlightDetails")
	public String adminViewAllFlights(ModelMap modelMap) {
		List<Flight> flights =fbo.findAll() ;
		modelMap.addAttribute("flights", flights);
		return "adminViewAllFlightDetails";
		
	}
	
	
}
