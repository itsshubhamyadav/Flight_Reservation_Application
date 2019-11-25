package com.shubham.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shubham.flightreservation.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {

}
