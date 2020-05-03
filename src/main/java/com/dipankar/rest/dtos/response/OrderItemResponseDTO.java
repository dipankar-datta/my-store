package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Employee;
import com.dipankar.data.entities.OrderItem;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrderItemResponseDTO implements Serializable {


    @JsonProperty("id")
    private Long id;

    @JsonProperty("order")
    private OrderResponseDTO order;

    @JsonProperty("product")
    private ProductResponseDTO product;

    @JsonProperty("unitPrice")
    private Double unitPrice;

    @JsonProperty("quantity")
    private Integer quantity;

    @JsonProperty("contactName")
    private Double discount;

    public static OrderItemResponseDTO entityToResponseDTO(OrderItem orderItem) {
        return OrderItemResponseDTO.builder()
                .id(orderItem.getId())
                .order(OrderResponseDTO.entityToResponseDTO(orderItem.getOrder()))
                .product(ProductResponseDTO.entityToResponseDTO(orderItem.getProduct()))
                .unitPrice(orderItem.getUnitPrice())
                .quantity(orderItem.getQuantity())
                .discount(orderItem.getDiscount()).build();
    }
}
