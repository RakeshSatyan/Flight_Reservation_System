package com.rakesh.flightreservation.model;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Flight extends AbstractEntity {
	
	private String flightNumber;
	private String operatingAirlines;
	private String departureCity;
	private String arrivalCity;
	//@DateTimeFormat(pattern="dd/MM/yyyy")
	//@Temporal(TemporalType.DATE)
	//private Date dateOfDeparture;
	private String dateOfDeparture;
	//private Timestamp estimatedDepartureTime;
	private String estimatedDepartureTime;
	

	public String getFlightNumber() {
		return flightNumber;
	}

	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}

	public String getOperatingAirlines() {
		return operatingAirlines;
	}

	public void setOperatingAirlines(String operatingAirlines) {
		this.operatingAirlines = operatingAirlines;
	}

	public String getDepartureCity() {
		return departureCity;
	}

	public void setDepartureCity(String departureCity) {
		this.departureCity = departureCity;
	}

	public String getArrivalCity() {
		return arrivalCity;
	}

	public void setArrivalCity(String arrivalCity) {
		this.arrivalCity = arrivalCity;
	}

	public String getDateOfDeparture() {
		return dateOfDeparture;
	}

	public void setDateOfDeparture(String dateOfDeparture) {
		this.dateOfDeparture = dateOfDeparture;
	}

	public String getEstimatedDepartureTime() {
		return estimatedDepartureTime;
	}

	public void setEstimatedDepartureTime(String estimatedDepartureTime) {
		this.estimatedDepartureTime = estimatedDepartureTime;
	}

	/*
	 * public Date getDateOfDeparture() { return dateOfDeparture; }
	 * 
	 * public void setDateOfDeparture(Date dateOfDeparture) { this.dateOfDeparture =
	 * dateOfDeparture; }
	 * 
	 * public Timestamp getEstimatedDepartureTime() { return estimatedDepartureTime;
	 * }
	 * 
	 * public void setEstimatedDepartureTime(Timestamp estimatedDepartureTime) {
	 * this.estimatedDepartureTime = estimatedDepartureTime; }
	 */
	
	

}
