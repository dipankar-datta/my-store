package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.OrderItem;
import com.dipankar.data.entities.Product;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductResponseDTO implements Serializable {

    @JsonProperty("id")
    private Long id;

    @JsonProperty("productName")
    private String productName;

    @JsonProperty("supplier")
    private SupplierResponseDTO supplier;

    @JsonProperty("category")
    private CategoryResponseDTO category;

    @JsonProperty("quantityPerUnit")
    private String quantityPerUnit;

    @JsonProperty("unitPrice")
    private Double unitPrice;

    @JsonProperty("unitsInStock")
    private Integer unitsInStock;

    @JsonProperty("unitsOnOrder")
    private Integer unitsOnOrder;

    @JsonProperty("reorderLevel")
    private Integer reorderLevel;

    @JsonProperty("discontinued")
    private boolean discontinued;

    public static ProductResponseDTO entityToResponseDTO(Product product) {
        return ProductResponseDTO.builder()
                .id(product.getId())
                .productName(product.getProductName())
                .supplier(SupplierResponseDTO.entityToResponseDTO(product.getSupplier()))
                .category(CategoryResponseDTO.entityToResponseDTO(product.getCategory()))
                .quantityPerUnit(product.getQuantityPerUnit())
                .unitPrice(product.getUnitPrice())
                .unitsInStock(product.getUnitsInStock())
                .unitsOnOrder(product.getUnitsOnOrder())
                .reorderLevel(product.getReorderLevel())
                .discontinued(product.isDiscontinued()).build();
    }
}
