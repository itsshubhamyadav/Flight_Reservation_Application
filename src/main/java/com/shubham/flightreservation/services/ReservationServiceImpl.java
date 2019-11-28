package com.shubham.flightreservation.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shubham.flightreservation.dto.ReservationRequest;
import com.shubham.flightreservation.entities.Flight;
import com.shubham.flightreservation.entities.Passenger;
import com.shubham.flightreservation.entities.Reservation;
import com.shubham.flightreservation.repos.FlightRepository;
import com.shubham.flightreservation.repos.PassengerRepository;
import com.shubham.flightreservation.repos.ReservationRepository;

@Service
public class ReservationServiceImpl implements ReservationService{

	@Autowired
	FlightRepository flightRepository;
	
	@Autowired
	PassengerRepository passengerRepository;
	
	@Autowired
	ReservationRepository reservationRepository;
	
	@Override
	public Reservation bookFlight(ReservationRequest request) {
		//make Payement
		Long flightId = request.getFlightId();
		Optional<Flight> flight = flightRepository.findById(flightId);
		
		Passenger passenger = new Passenger();
		passenger.setFirstName(request.getPassengerFirstName());
		passenger.setLastName(request.getPassengerLastName());
		passenger.setEmail(request.getPassengerEmail());
		passenger.setPhone(request.getPassengerPhone());
		Passenger savedPassenger = passengerRepository.save(passenger);
		
		Reservation reservation = new  Reservation();
		reservation.setFlight(flight.get());
		reservation.setPassenger(savedPassenger);
		reservation.setCheckedIn(false);
		
		Reservation savedReservation = reservationRepository.save(reservation);

		return savedReservation;
	}

}
