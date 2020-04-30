package com.dipankar.data.entities;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "categories") @Entity @Data
public class Category {

    @Id
    @Column(name = "categoryid")
    private Long id;

    @Column(name = "categoryname")
    private String name;

    @Column(name = "description")
    private String description;

}
