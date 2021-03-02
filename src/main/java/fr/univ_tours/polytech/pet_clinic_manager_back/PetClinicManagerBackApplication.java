package fr.univ_tours.polytech.pet_clinic_manager_back;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
@EnableSwagger2
public class PetClinicManagerBackApplication {

	public static void main(String[] args) {
		SpringApplication.run(PetClinicManagerBackApplication.class, args);
	}

}
