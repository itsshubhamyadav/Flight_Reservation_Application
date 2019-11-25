package com.shubham.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shubham.flightreservation.entities.Flight;

public interface FlightRepository extends JpaRepository<Flight, Long> {

}
