package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Order;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrderResponseDTO implements Serializable {

    @JsonProperty("id")
    private Long id;

    @JsonProperty("customer")
    private CustomerResponseDTO customer;

    @JsonProperty("orderdate")
    private Date orderDate;

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

    public static OrderResponseDTO entityToResponseDTO(Order order) {
        return OrderResponseDTO.builder()
                .id(order.getId())
                .customer(CustomerResponseDTO.entityToResponseDTO(order.getCustomer()))
                .orderDate(order.getOrderDate())
                .requiredDate(order.getRequiredDate())
                .shippedDate(order.getShippedDate())
                .shipVia(ShipperResponseDTO.entityToResponseDTO(order.getShipVia()))
                .shipAddress(order.getShipAddress())
                .shipCity(order.getShipCity())
                .shipRegion(order.getShipRegion())
                .shipPostalCode(order.getShipPostalCode())
                .shipName(order.getShipName())
                .shipCountry(order.getShipCountry())
                .orderItems(
                        order
                                .getOrderItems()
                                .stream()
                                .map(OrderItemResponseDTO::entityToResponseDTO)
                                .collect(Collectors.toList())
                ).build();
    }
}
