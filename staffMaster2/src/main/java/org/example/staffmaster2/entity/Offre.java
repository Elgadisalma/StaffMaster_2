package org.example.staffmaster2.entity;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "offre")
public class Offre {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long offre_id;

    private String title;

    private String description;

    private Boolean status;

    @Temporal(TemporalType.DATE)
    private Date dateValidite;

    @Temporal(TemporalType.DATE)
    private Date dateFin;

    // Getters et setters
}

