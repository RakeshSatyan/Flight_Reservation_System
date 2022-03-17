package com.rakesh.flightreservation.services;

import com.rakesh.flightreservation.dto.ReservationRequest;
import com.rakesh.flightreservation.model.Reservation;

public interface ReservationService {

	public Reservation bookFlight(ReservationRequest request);
}
