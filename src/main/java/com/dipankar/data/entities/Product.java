package com.dipankar.data.entities;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity @Data @Table(name = "products")
public class Product {

    @Id
    @Column(name = "productCode")
    private String productCode;

    @Column(name = "productName")
    private String productName;

    @Column(name = "productLine")
    private String productLine;

    @Column(name = "productScale")
    private String productScale;

    @Column(name = "productVendor")
    private String productVendor;

    @Column(name = "productDescription")
    private String productDescription;

    @Column(name = "quantityInStock")
    private Short quantityInStock;

    @Column(name = "buyPrice")
    private Double buyPrice;

    @Column(name = "MSRP")
    private Double MSRP;
}
