package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Customer;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CustomerResponseDTO implements Serializable {

    @JsonProperty("id")
    private Long id;

    @JsonProperty("companyName")
    private String companyName;

    @JsonProperty("contactName")
    private String contactName;

    @JsonProperty("contactTitle")
    private String contactTitle;

    @JsonProperty("address")
    private String address;

    @JsonProperty("city")
    private String city;

    @JsonProperty("region")
    private String region;

    @JsonProperty("postalCode")
    private String postalCode;

    @JsonProperty("country")
    private String country;

    @JsonProperty("phone")
    private String phone;

    @JsonProperty("fax")
    private String fax;

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
