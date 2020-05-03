package com.dipankar.data.entities;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Builder;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Table(name = "employees") @Entity @Data @Builder
public class Employee implements Serializable {

    @Id
    @Column(name = "employeeid")
    private Long id;

    @Column(name = "lastname")
    private String lastName;

    @Column(name = "firstname")
    private String firstName;

    @Column(name = "title")
    private String title;

    @Column(name = "titleofcourtesy")
    private String titleOfCourtesy;

    @Column(name = "birthdate")
    private Date birthDate;

    @Column(name = "hiredate")
    private Date hireDate;

    @Column(name = "address")
    private String address;

    @Column(name = "city")
    private String city;

    @Column(name = "region")
    private String region;

    @Column(name = "postalcode")
    private String postalCode;

    @Column(name = "country")
    private String country;

    @Column(name = "homephone")
    private String homePhone;

    @Column(name = "extension")
    private String extension;

    @Column(name = "notes")
    private String notes;

    @ManyToOne
    @JoinColumn(name = "reportsto")
    private Employee reportsTo;

    @Column(name = "salary")
    private Float salary;

    @OneToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name = "employeeterritories",
            inverseJoinColumns = {@JoinColumn(name = "territoryid", referencedColumnName = "territoryid")},
            joinColumns = {@JoinColumn(name = "employeeid", referencedColumnName = "employeeid")})
    @JsonManagedReference
    private List<Territory> territories;
}
