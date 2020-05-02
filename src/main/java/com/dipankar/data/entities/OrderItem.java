package com.dipankar.data.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Data;

import javax.persistence.*;

@Table(name = "order_details") @Entity(name = "orderitem") @Data
public class OrderItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "orderid")
    @JsonBackReference
    private Order order;

    @OneToOne
    @JoinColumn(name = "productid")
    private Product product;

    @Column(name = "unitprice")
    private Double unitPrice;

    @Column(name = "quantity")
    private Integer quantity;

    @Column(name = "discount")
    private Double discount;

}
