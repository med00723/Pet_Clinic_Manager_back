package fr.univ_tours.polytech.pet_clinic_manager_back.controllers;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@Api( tags = "Clients2")
@RequestMapping("/api/test")
public class TestController {

	@ApiOperation(value = "This method is used to get the clients.")
	@GetMapping("/all")
	public String allAccess() {
		return "Public Content.";
	}

	@ApiOperation(value = "This method is used to get the clients.")
	@GetMapping("/user")
	@PreAuthorize("hasRole('USER')")
	public String userAccess() {
		return "User Content.";
	}

	@ApiOperation(value = "This method is used to get the clients.")
	@GetMapping("/admin")
	@PreAuthorize("hasRole('ADMIN')")
	public String adminAccess() {
		return "Admin Board.";
	}
}
