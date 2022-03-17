package com.rakesh.flightreservation.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rakesh.flightreservation.bo.FlightBo;
import com.rakesh.flightreservation.bo.PassengerBo;
import com.rakesh.flightreservation.bo.ReservationBo;
import com.rakesh.flightreservation.dto.ReservationRequest;
import com.rakesh.flightreservation.model.Flight;
import com.rakesh.flightreservation.model.Passenger;
import com.rakesh.flightreservation.model.Reservation;

// service annotation will scan and create object at runtime
@Service 
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	FlightBo fbo;
	
	@Autowired
	PassengerBo pbo;
	
	@Autowired
	ReservationBo rbo;

	@Override
	public Reservation bookFlight(ReservationRequest request) {
		Long flightId = request.getFlightId();
		Flight flight = fbo.findById(flightId).get();

		Passenger passenger = new Passenger();
		passenger.setFirstName(request.getPassengerFirstName());
		passenger.setLastName(request.getPassengerLastName());
		passenger.setEmail(request.getPassengerEmail());
		passenger.setPhone(request.getPassengerPhone());
		Passenger savedPassenger = pbo.save(passenger);// this contains auto generated id

		Reservation reservation = new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(savedPassenger);
		reservation.setCheckedIn(false);
		Reservation savedReservation = rbo.save(reservation);
		
		return savedReservation;
	}

}
