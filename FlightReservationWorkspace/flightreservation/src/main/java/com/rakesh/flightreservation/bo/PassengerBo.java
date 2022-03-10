package com.rakesh.flightreservation.bo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rakesh.flightreservation.model.Passenger;

public interface PassengerBo extends JpaRepository<Passenger, Long> {

}
