package com.dipankar.data.entities;

import lombok.Builder;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "customers") @Entity @Data @Builder
public class Customer {

    @Id
    @Column(name = "id")
    private Long id;

    @Column(name = "companyname")
    private String companyName;

    @Column(name = "contactname")
    private String contactName;

    @Column(name = "contacttitle")
    private String contactTitle;

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

    @Column(name = "phone")
    private String phone;

    @Column(name = "fax")
    private String fax;
}
