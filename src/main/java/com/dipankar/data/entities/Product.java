package com.dipankar.data.entities;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Table(name = "products") @Entity @Data @Builder @NoArgsConstructor @AllArgsConstructor
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ProductID")
    private Long id;

    @Column(name = "productname")
    private String productName;

    @OneToOne
    @JoinColumn(name = "supplierid")
    private Supplier supplier;

    @OneToOne
    @JoinColumn(name = "categoryid")
    private Category category;

    @Column(name = "quantityperunit")
    private String quantityPerUnit;

    @Column(name = "unitprice")
    private Double unitPrice;

    @Column(name = "unitsinstock")
    private Integer unitsInStock;

    @Column(name = "unitsonorder")
    private Integer unitsOnOrder;

    @Column(name = "reorderlevel")
    private Integer reorderLevel;

    @Column(name = "discontinued")
    private boolean discontinued;
}
