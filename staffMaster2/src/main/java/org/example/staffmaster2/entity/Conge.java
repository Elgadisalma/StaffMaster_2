package org.example.staffmaster2.entity;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "conge")
public class Conge {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String motif;

    @Temporal(TemporalType.DATE)
    private Date dateConge;

    private Boolean status;

    @ManyToOne
    @JoinColumn(name = "employee_id", nullable = false)
    private Employee employee;

    // Getters et setters
}

