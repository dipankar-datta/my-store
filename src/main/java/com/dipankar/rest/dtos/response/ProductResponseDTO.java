package com.dipankar.rest.dtos.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
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
}
