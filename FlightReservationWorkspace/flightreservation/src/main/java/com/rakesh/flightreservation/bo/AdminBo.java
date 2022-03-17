package com.rakesh.flightreservation.bo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rakesh.flightreservation.model.Admin;

public interface AdminBo extends JpaRepository<Admin, Long> {

	

}
