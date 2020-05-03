package com.dipankar.data.entities;

import lombok.Builder;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "region") @Entity @Data @Builder
public class Region {

    @Id
    @Column(name = "regionid")
    private Long id;

    @Column(name = "regiondescription")
    private String description;

}
