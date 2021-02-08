package fr.univ_tours.polytech.pet_clinic_manager_back.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/noAuth/rest")
public class NoAuthentification {
    @GetMapping("/sayHi")
    public String sayHi() {
        return "Bonjour";
    }
}
