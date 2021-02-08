package fr.univ_tours.polytech.pet_clinic_manager_back.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
@Entity
public class Role extends BaseEntity {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    public Role(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
