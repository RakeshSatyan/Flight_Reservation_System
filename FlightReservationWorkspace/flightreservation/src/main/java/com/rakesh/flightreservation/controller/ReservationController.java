package com.rakesh.flightreservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rakesh.flightreservation.bo.FlightBo;
import com.rakesh.flightreservation.dto.ReservationRequest;
import com.rakesh.flightreservation.model.Flight;
import com.rakesh.flightreservation.model.Reservation;
import com.rakesh.flightreservation.services.ReservationService;

@Controller
public class ReservationController {

	@Autowired
	FlightBo fbo;
	
	@Autowired
	ReservationService reservationService;

	@RequestMapping("/showCompleteReservation")
	public String showCompleteReservation(@RequestParam("flightId") Long flightId,ModelMap modelMap) {
		Flight flight=fbo.findById(flightId).get();
		modelMap.addAttribute("flight", flight);
		return "completeReservation";

	}
	@RequestMapping(value="/completeReservation",method=RequestMethod.POST)
	public String completeReservation(ReservationRequest request,ModelMap modelMap) {
		Reservation reservation = reservationService.bookFlight(request);
		modelMap.addAttribute("msg", "Your reservation id is "+reservation.getId()+" !!!");
		return "reservationConfirmation";
		
	}
}
