package com.dipankar.data.entities;

import lombok.Builder;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "shippers") @Entity @Data @Builder
public class Shipper {

    @Id
    @Column(name = "shipperid")
    private Long id;

    @Column(name = "companyname")
    private String companyName;

    @Column(name = "phone")
    private String phone;
}
