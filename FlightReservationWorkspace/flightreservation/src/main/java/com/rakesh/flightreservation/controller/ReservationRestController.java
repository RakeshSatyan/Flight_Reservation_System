package com.rakesh.flightreservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.rakesh.flightreservation.bo.ReservationBo;
import com.rakesh.flightreservation.dto.ReservationUpdateRequest;
import com.rakesh.flightreservation.model.Reservation;

@RestController
@CrossOrigin
public class ReservationRestController {
	
	@Autowired
	ReservationBo rbo;
	
	@RequestMapping("/reservations/{id}")
	public Reservation findReservation(@PathVariable("id") Long id) {
		Reservation reservation=rbo.findById(id).get();
		return reservation;
		
	}
	@RequestMapping("/reservations")
	public Reservation updateReservation(@RequestBody ReservationUpdateRequest request) {
		Reservation reservation=rbo.findById(request.getId()).get();
		reservation.setNumberOfBags(request.getNumberOfBags());
		reservation.setCheckedIn(request.getCheckedIn());
		Reservation updatedReservation = rbo.save(reservation);
		return updatedReservation;
		
	}
}
