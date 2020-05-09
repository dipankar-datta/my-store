package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Customer;
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
@ApiModel(description = "Details of the Customer")
public class CustomerResponseDTO implements Serializable {

    @JsonProperty("id")
    @ApiModelProperty(notes = "ID of the Customer")
    private Long id;

    @JsonProperty("companyName")
    @ApiModelProperty(notes = "Company name of the Customer")
    private String companyName;

    @JsonProperty("contactName")
    @ApiModelProperty(notes = "Contact name of the Customer")
    private String contactName;

    @JsonProperty("contactTitle")
    @ApiModelProperty(notes = "Contact title of the Customer")
    private String contactTitle;

    @JsonProperty("address")
    @ApiModelProperty(notes = "Address of the Customer")
    private String address;

    @JsonProperty("city")
    @ApiModelProperty(notes = "City of the Customer")
    private String city;

    @JsonProperty("region")
    @ApiModelProperty(notes = "Region of the Customer")
    private String region;

    @JsonProperty("postalCode")
    @ApiModelProperty(notes = "Postal code of the Customer")
    private String postalCode;

    @JsonProperty("country")
    @ApiModelProperty(notes = "County of the Customer")
    private String country;

    @JsonProperty("phone")
    @ApiModelProperty(notes = "Phone number of the Customer")
    private String phone;

    @JsonProperty("fax")
    @ApiModelProperty(notes = "Fax number of the Customer")
    private String fax;

    @JsonIgnore
    public static CustomerResponseDTO entityToResponseDTO(Customer customer) {
        return CustomerResponseDTO.builder()
                .id(customer.getId())
                .companyName(customer.getCompanyName())
                .contactName(customer.getContactName())
                .contactTitle(customer.getContactTitle())
                .address(customer.getAddress())
                .city(customer.getCity())
                .region(customer.getRegion())
                .postalCode(customer.getPostalCode())
                .country(customer.getCountry())
                .phone(customer.getPhone())
                .fax(customer.getFax()).build();
    }
}
