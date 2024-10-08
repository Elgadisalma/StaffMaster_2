package org.example.staffmaster2.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

import java.util.Date;

@Entity
@Table(name = "employee")

public class Employee extends User {

    private String cnss;

    @Temporal(TemporalType.DATE)
    private Date dateEmbauche;

    private Double salaire;

    private Integer numChilds;

    private Integer soldeConge;

    private String departement;

    private String poste;

    // Getters et setters
}
