package com.rakesh.flightreservation.bo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rakesh.flightreservation.model.Reservation;

public interface ReservationBo extends JpaRepository<Reservation, Long> {

}
