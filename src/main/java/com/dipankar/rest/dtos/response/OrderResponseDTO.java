package com.dipankar.rest.dtos.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderResponseDTO implements Serializable {

    @JsonProperty("id")
    private Long id;

    @JsonProperty("customer")
    private CustomerResponseDTO customer;

    @JsonProperty("orderdate")
    private Date orderdate;

    @JsonProperty("requiredDate")
    private Date requiredDate;

    @JsonProperty("shippedDate")
    private Date shippedDate;

    @JsonProperty("shipVia")
    private ShipperResponseDTO shipVia;

    @JsonProperty("freight")
    private Double freight;

    @JsonProperty("shipName")
    private String shipName;

    @JsonProperty("shipAddress")
    private String shipAddress;

    @JsonProperty("shipCity")
    private String shipCity;

    @JsonProperty("shipRegion")
    private String shipRegion;

    @JsonProperty("shipPostalCode")
    private String shipPostalCode;

    @JsonProperty("shipCountry")
    private String shipCountry;

    @JsonProperty("orderItems")
    private List<OrderItemResponseDTO> orderItems;
}
