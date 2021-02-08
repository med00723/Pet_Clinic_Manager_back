package fr.univ_tours.polytech.pet_clinic_manager_back.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rest/auth")
public class Application {
    @GetMapping("/getMsg")
    public String greeting() {
        return "Bonjour admin";
    }
}
