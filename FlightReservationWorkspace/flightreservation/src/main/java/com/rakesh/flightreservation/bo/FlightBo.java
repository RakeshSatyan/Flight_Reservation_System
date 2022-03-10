package com.rakesh.flightreservation.bo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rakesh.flightreservation.model.Flight;

public interface FlightBo extends JpaRepository<Flight, Long> {

}
