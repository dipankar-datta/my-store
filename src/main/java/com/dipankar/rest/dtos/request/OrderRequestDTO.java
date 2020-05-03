package com.dipankar.rest.dtos.request;

import com.dipankar.data.entities.Order;
import com.dipankar.data.entities.OrderItem;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderRequestDTO implements RequestDTO<Order>, Serializable {


    @JsonProperty("id")
    private Long id;

    @NotNull(message = "Customer cannot be null")
    @Size(min = 1, max = 20, message = "Customer should be between 1 and 20 characters long")
    @JsonProperty("customer")
    private CustomerRequestDTO customer;

    @NotNull(message = "Order date cannot be null")
    @Size(min = 10, max = 120, message = "Order date should be between 10 and 120 characters long")
    @JsonProperty("orderdate")
    private Date orderdate;

    @NotNull(message = "Required date cannot be null")
    @Size(min = 10, max = 120, message = "Required date should be between 10 and 120 characters long")
    @JsonProperty("requiredDate")
    private Date requiredDate;

    @NotNull(message = "Shipped date cannot be null")
    @Size(min = 10, max = 120, message = "Description should be between 10 and 120 characters long")
    @JsonProperty("shippedDate")
    private Date shippedDate;

    @NotNull(message = "Shipper cannot be null")
    @Size(min = 1, max = 20, message = "Shipper should be between 1 and 20 characters long")
    @JsonProperty("shipVia")
    private ShipperRequestDTO shipVia;

    @NotNull(message = "Freight cannot be null")
    @Size(min = 1, max = 120, message = "Freight should be between 1 and 120 characters long")
    @JsonProperty("freight")
    private Double freight;

    @NotNull(message = "Ship name cannot be null")
    @Size(min = 4, max = 120, message = "Ship name should be between 4 and 120 characters long")
    @JsonProperty("shipName")
    private String shipName;

    @NotNull(message = "Ship address cannot be null")
    @Size(min = 4, max = 120, message = "Ship address should be between 4 and 120 characters long")
    @JsonProperty("shipAddress")
    private String shipAddress;

    @NotNull(message = "Ship city cannot be null")
    @Size(min = 2, max = 120, message = "Ship city should be between 2 and 120 characters long")
    @JsonProperty("shipCity")
    private String shipCity;

    @NotNull(message = "Ship region cannot be null")
    @Size(min = 1, max = 120, message = "Description should be between 1 and 120 characters long")
    @JsonProperty("shipRegion")
    private String shipRegion;

    @NotNull(message = "Description cannot be null")
    @Size(min = 4, max = 120, message = "Description should be between 4 and 120 characters long")
    @JsonProperty("shipPostalCode")
    private String shipPostalCode;

    @NotNull(message = "Ship country cannot be null")
    @Size(min = 3, max = 120, message = "Ship country should be between 3 and 120 characters long")
    @JsonProperty("shipCountry")
    private String shipCountry;

    @NotNull(message = "Order items cannot be null")
    @JsonProperty("orderItems")
    private List<OrderItemRequestDTO> orderItems;

    @Override
    public Order toEntity() {
        return Order.builder()
                .id(id)
                .customer(customer.toEntity())
                .orderDate(orderdate)
                .requiredDate(requiredDate)
                .shippedDate(shippedDate)
                .shipVia(shipVia.toEntity())
                .freight(freight)
                .shipName(shipName)
                .shipAddress(shipAddress)
                .shipCity(shipCity)
                .shipRegion(shipRegion)
                .shipPostalCode(shipPostalCode)
                .shipCountry(shipCountry)
                .orderItems(
                        orderItems.stream().map(oi -> oi.toEntity()).collect(Collectors.toList())
                ).build();
    }
}
