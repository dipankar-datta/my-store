package com.dipankar.rest.dtos.request;

import com.dipankar.data.entities.Category;
import com.dipankar.data.entities.Product;
import com.dipankar.data.entities.Supplier;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductRequestDTO implements Serializable {

    @JsonProperty("id")
    private Long id;

    @NotNull(message = "Product name cannot be null")
    @Size(min = 4, max = 120, message = "Product name should be between 4 and 120 characters long")
    @JsonProperty("productName")
    private String productName;

    @NotNull(message = "Supplier cannot be null")
    @Size(min = 1, max = 20, message = "Supplier should be between 1 and 20 characters long")
    @JsonProperty("supplier")
    private SupplierRequestDTO supplier;

    @NotNull(message = "Category cannot be null")
    @Size(min = 1, max = 20, message = "Category should be between 10 and 20 characters long")
    @JsonProperty("category")
    private CategoryRequestDTO category;

    @NotNull(message = "Quantity per unit cannot be null")
    @Size(min = 1, max = 50, message = "Quantity per unit should be between 1 and 50 characters long")
    @JsonProperty("quantityPerUnit")
    private String quantityPerUnit;

    @NotNull(message = "Unit price cannot be null")
    @Size(min = 1, max = 50, message = "Unit price should be between 1 and 50 characters long")
    @JsonProperty("unitPrice")
    private Double unitPrice;

    @NotNull(message = "Unit in stock cannot be null")
    @Size(min = 1, max = 50, message = "Unit in stock should be between 1 and 50 characters long")
    @JsonProperty("unitsInStock")
    private Integer unitsInStock;

    @NotNull(message = "Units on order cannot be null")
    @Size(min = 1, max = 20, message = "Units on order should be between 1 and 20 characters long")
    @JsonProperty("unitsOnOrder")
    private Integer unitsOnOrder;

    @NotNull(message = "Reorder level cannot be null")
    @Size(min = 1, max = 20, message = "Reorder level should be between 1 and 20 characters long")
    @JsonProperty("reorderLevel")
    private Integer reorderLevel;

    @NotNull(message = "Discontinued cannot be null")
    @Size(min = 1, max = 1, message = "Discontinued should be between 1 character long")
    @JsonProperty("discontinued")
    private boolean discontinued;

    public Product toEntity() {
        return Product.builder()
                .id(id)
                .productName(productName)
                .supplier(supplier.toEntity())
                .category(category.toEntity())
                .quantityPerUnit(quantityPerUnit)
                .unitPrice(unitPrice)
                .unitsInStock(unitsInStock)
                .unitsOnOrder(unitsOnOrder)
                .reorderLevel(reorderLevel)
                .discontinued(discontinued).build();
    }
}
