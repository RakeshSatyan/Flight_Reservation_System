package com.rakesh.flightreservation.bo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rakesh.flightreservation.model.User;

public interface UserBo extends JpaRepository<User, Long> {

	User findByEmail(String email);

}
