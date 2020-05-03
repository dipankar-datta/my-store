package com.dipankar.rest.dtos.request;

import com.dipankar.data.entities.Order;
import com.dipankar.data.entities.Product;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderItemRequestDTO implements Serializable {


    @JsonProperty("id")
    private Long id;

    @NotNull(message = "Order name cannot be null")
    @Size(min = 1, max = 50, message = "Order should be between 1 and 50 characters long")
    @JsonProperty("order")
    private OrderRequestDTO order;


    @NotNull(message = "Product name cannot be null")
    @Size(min = 1, max = 50, message = "Contact name should be between 1 and 50 characters long")
    @JsonProperty("product")
    private ProductRequestDTO product;

    @NotNull(message = "Unit price cannot be null")
    @Size(min = 1, max = 50, message = "Unit price should be between 1 and 50 characters long")
    @JsonProperty("unitPrice")
    private Double unitPrice;

    @NotNull(message = "Quantity name cannot be null")
    @Size(min = 1, max = 50, message = "Quantity name should be between 4 and 50 characters long")
    @JsonProperty("quantity")
    @Digits(integer = 1, fraction = 20, message = "Only number type of allowed for Quantity")
    private Integer quantity;

    @NotNull(message = "Contact name cannot be null")
    @Size(min = 4, max = 50, message = "Contact name should be between 4 and 50 characters long")
    @JsonProperty("contactName")
    private Double discount;
}
