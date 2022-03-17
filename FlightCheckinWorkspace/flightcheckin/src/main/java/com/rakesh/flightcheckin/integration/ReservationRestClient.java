package com.rakesh.flightcheckin.integration;

import com.rakesh.flightcheckin.integration.dto.Reservation;
import com.rakesh.flightcheckin.integration.dto.ReservationUpdateRequest;

public interface ReservationRestClient {
	
	public Reservation findReservation(Long id);
	
	public Reservation updateReservation(ReservationUpdateRequest request);
}
