package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.OrderItem;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ApiModel(description = "Details of the Order Item")
public class OrderItemResponseDTO implements Serializable {


    @JsonProperty("id")
    @ApiModelProperty(notes = "ID of the Order Item")
    private Long id;

    @JsonProperty("orderId")
    @ApiModelProperty(notes = "Order ID of the Item")
    private Long orderId;

    @JsonProperty("product")
    @ApiModelProperty(notes = "Order Item")
    private ProductResponseDTO product;

    @JsonProperty("unitPrice")
    @ApiModelProperty(notes = "Price of the Order Item")
    private Double unitPrice;

    @JsonProperty("quantity")
    @ApiModelProperty(notes = "Quantity of the Order Item")
    private Integer quantity;

    @JsonProperty("discount")
    @ApiModelProperty(notes = "Discount on the Order Item")
    private Double discount;

    @JsonIgnore
    public static OrderItemResponseDTO entityToResponseDTO(OrderItem orderItem) {
        return OrderItemResponseDTO.builder()
                .id(orderItem.getId())
                .orderId(orderItem.getOrderId())
                .product(ProductResponseDTO.entityToResponseDTO(orderItem.getProduct()))
                .unitPrice(orderItem.getUnitPrice())
                .quantity(orderItem.getQuantity())
                .discount(orderItem.getDiscount()).build();
    }
}
