package org.example.staffmaster2.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "candidature")
public class Candidature {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long condidature_id;

    @ManyToOne
    @JoinColumn(name = "offre_id", nullable = false)
    private Offre offre;

    private String email;

    private String competance;

    private Boolean status;

    // Getters et setters
}

