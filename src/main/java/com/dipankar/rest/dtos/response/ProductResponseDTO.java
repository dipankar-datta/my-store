package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Product;
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
@ApiModel(description = "Details of the Product")
public class ProductResponseDTO implements Serializable {

    @JsonProperty("id")
    @ApiModelProperty(notes = "ID of the Product")
    private Long id;

    @JsonProperty("productName")
    @ApiModelProperty(notes = "Name of the Product")
    private String productName;

    @JsonProperty("supplier")
    @ApiModelProperty(notes = "Supplier of the Product")
    private SupplierResponseDTO supplier;

    @JsonProperty("category")
    @ApiModelProperty(notes = "Category of the Product")
    private CategoryResponseDTO category;

    @JsonProperty("quantityPerUnit")
    @ApiModelProperty(notes = "Quantity of the Product per unit")
    private String quantityPerUnit;

    @JsonProperty("unitPrice")
    @ApiModelProperty(notes = "Price of the Product per unit")
    private Double unitPrice;

    @JsonProperty("unitsInStock")
    @ApiModelProperty(notes = "Units of the Product available")
    private Integer unitsInStock;

    @JsonProperty("unitsOnOrder")
    @ApiModelProperty(notes = "Units of the Product ordered")
    private Integer unitsOnOrder;

    @JsonProperty("reorderLevel")
    @ApiModelProperty(notes = "Reorder level of the Product")
    private Integer reorderLevel;

    @JsonProperty("discontinued")
    @ApiModelProperty(notes = "If the Product is discontinued")
    private boolean discontinued;

    @JsonIgnore
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
