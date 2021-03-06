package com.dipankar.data.entities;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;

@Table(name = "order_details") @Entity @Data @Builder @NoArgsConstructor @AllArgsConstructor
public class OrderItem implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "orderid")
    private Long orderId;

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
