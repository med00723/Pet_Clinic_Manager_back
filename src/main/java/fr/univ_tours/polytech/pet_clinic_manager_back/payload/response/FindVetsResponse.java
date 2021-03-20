package fr.univ_tours.polytech.pet_clinic_manager_back.payload.response;

import fr.univ_tours.polytech.pet_clinic_manager_back.models.Vet;

import java.util.List;

public class FindVetsResponse {
    private List<Vet> pets;

    public List<Vet> getPets() {
        return pets;
    }

    public void setPets(List<Vet> pets) {
        this.pets = pets;
    }

    public FindVetsResponse(List<Vet> pets) {
        this.pets = pets;
    }
}
