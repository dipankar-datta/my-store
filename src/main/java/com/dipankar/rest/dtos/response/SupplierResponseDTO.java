package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Supplier;
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
@ApiModel(description = "Details of the Supplier")
public class SupplierResponseDTO implements Serializable {


    @JsonProperty("id")
    @ApiModelProperty(notes = "ID of the Supplier")
    private Long id;

    @JsonProperty("companyName")
    @ApiModelProperty(notes = "Company name of the Supplier")
    private String companyName;

    @JsonProperty("contactName")
    @ApiModelProperty(notes = "Contact name of the Supplier")
    private String contactName;

    @JsonProperty("contactTitle")
    @ApiModelProperty(notes = "Contact title of the Supplier")
    private String contactTitle;

    @JsonProperty("address")
    @ApiModelProperty(notes = "Address of the Supplier")
    private String address;

    @JsonProperty("city")
    @ApiModelProperty(notes = "City of the Supplier")
    private String city;

    @JsonProperty("region")
    @ApiModelProperty(notes = "Region of the Supplier")
    private String region;

    @JsonProperty("postalCode")
    @ApiModelProperty(notes = "Postal code of the Supplier")
    private String postalCode;

    @JsonProperty("country")
    @ApiModelProperty(notes = "Country of the Supplier")
    private String country;

    @JsonProperty("phone")
    @ApiModelProperty(notes = "Phone number of the Supplier")
    private String phone;

    @JsonProperty("fax")
    @ApiModelProperty(notes = "Fax number of the Supplier")
    private String fax;

    @JsonProperty("homePage")
    @ApiModelProperty(notes = "Home page of the Supplier")
    private String homePage;

    @JsonIgnore
    public static SupplierResponseDTO entityToResponseDTO(Supplier supplier) {
        return SupplierResponseDTO.builder()
                .id(supplier.getId())
                .companyName(supplier.getCompanyName())
                .contactTitle(supplier.getContactTitle())
                .address(supplier.getAddress())
                .city(supplier.getCity())
                .region(supplier.getRegion())
                .postalCode(supplier.getPostalCode())
                .country(supplier.getCountry())
                .phone(supplier.getPhone())
                .fax(supplier.getFax())
                .homePage(supplier.getHomePage()).build();
    }
}
