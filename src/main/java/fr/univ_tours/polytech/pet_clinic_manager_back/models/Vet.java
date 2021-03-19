package fr.univ_tours.polytech.pet_clinic_manager_back.models;

import javax.persistence.*;

@Entity
@Table(name = "vet",
        uniqueConstraints = {
                @UniqueConstraint(columnNames = "id")})
public class Vet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    private Integer workTime;

    private Integer salary;

    public Vet() {
    }

    public Vet(String name, Integer workTime, Integer salary) {
        this.name = name;
        this.workTime = workTime;
        this.salary = salary;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getWorkTime() {
        return workTime;
    }

    public void setWorkTime(Integer workTime) {
        this.workTime = workTime;
    }

    public Integer getSalary() {
        return salary;
    }

    public void setSalary(Integer salary) {
        this.salary = salary;
    }
}
