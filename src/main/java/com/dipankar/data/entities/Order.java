package com.dipankar.data.entities;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Builder;
import lombok.Data;
import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Table(name = "orders") @Entity @Data @Builder
public class Order implements Serializable {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "orderid")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "customerid")
    private Customer customer;

    @Column(name = "orderdate")
    private Date orderDate;

    @Column(name = "requireddate")
    private Date requiredDate;

    @Column(name = "shippeddate")
    private Date shippedDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "shipvia")
    private Shipper shipVia;

    @Column(name = "freight")
    private Double freight;

    @Column(name = "shipname")
    private String shipName;

    @Column(name = "shipaddress")
    private String shipAddress;

    @Column(name = "shipcity")
    private String shipCity;

    @Column(name = "shipregion")
    private String shipRegion;

    @Column(name = "shippostalcode")
    private String shipPostalCode;

    @Column(name = "shipcountry")
    private String shipCountry;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "order")
    @JsonManagedReference
    private List<OrderItem> orderItems;

}
