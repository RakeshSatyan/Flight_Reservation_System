package com.rakesh.flightreservation.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rakesh.flightreservation.bo.FlightBo;
import com.rakesh.flightreservation.model.Flight;

@Controller
public class FlightController {
	@Autowired
	FlightBo fbo;

	/*
	 * @RequestMapping("/findFlights") public String
	 * findFlights(@RequestParam("from") String from, @RequestParam("to") String to,
	 * 
	 * @RequestParam("departureDate") @DateTimeFormat(pattern = "MM-dd-yyyy") Date
	 * departureDate, ModelMap modelMap) { List<Flight> flights =
	 * fbo.findFlights(from, to, departureDate); modelMap.addAttribute("flights",
	 * flights); return "displayFlights"; }
	 */
	@RequestMapping("/findFlights")
	public String findFlights(@RequestParam("from") String from, @RequestParam("to") String to,
			@RequestParam("departureDate") String departureDate,
			ModelMap modelMap) {
		
		List<Flight> flights = fbo.findFlights(from, to, departureDate);
		if(flights.size()>=1) {
			modelMap.addAttribute("flights", flights);
			return "displayFlights";
		}
		else {
			modelMap.addAttribute("msg", "No flights found");
			return "findFlights";
		}
		
	}

}
