package com.dipankar.rest.dtos.request;

import com.dipankar.data.entities.Customer;
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
public class CustomerRequestDTO implements RequestDTO<Customer>, Serializable {

    @JsonProperty("id")
    private Long id;

    @NotNull(message = "Company name cannot be null")
    @Size(min = 4, max = 50, message = "Company name should be between 4 and 50 characters long")
    @JsonProperty("companyName")
    private String companyName;

    @NotNull(message = "Contact name cannot be null")
    @Size(min = 4, max = 50, message = "Contact name should be between 4 and 50 characters long")
    @JsonProperty("contactName")
    private String contactName;


    @NotNull(message = "Contact title cannot be null")
    @Size(min = 4, max = 50, message = "Contact title should be between 4 and 50 characters long")
    @JsonProperty("contactTitle")
    private String contactTitle;


    @NotNull(message = "Address cannot be null")
    @Size(min = 4, max = 50, message = "Address should be between 4 and 50 characters long")
    @JsonProperty("address")
    private String address;


    @NotNull(message = "City cannot be null")
    @Size(min = 4, max = 50, message = "City should be between 4 and 50 characters long")
    @JsonProperty("city")
    private String city;


    @NotNull(message = "Region cannot be null")
    @Size(min = 4, max = 50, message = "Region should be between 4 and 50 characters long")
    @JsonProperty("region")
    private String region;


    @NotNull(message = "Postal code cannot be null")
    @Size(min = 4, max = 50, message = "Postal code should be between 4 and 50 characters long")
    @JsonProperty("postalCode")
    private String postalCode;


    @NotNull(message = "Country cannot be null")
    @Size(min = 4, max = 50, message = "Country should be between 4 and 50 characters long")
    @JsonProperty("country")
    private String country;


    @NotNull(message = "Phone cannot be null")
    @Size(min = 10, max = 20, message = "Phone should be between 10 and 20 characters long")
    @JsonProperty("phone")
    private String phone;

    @JsonProperty("fax")
    private String fax;

    public Customer toEntity() {
        return Customer.builder()
                .id(id)
                .companyName(companyName)
                .contactName(contactName)
                .contactTitle(contactTitle)
                .address(address)
                .city(city)
                .region(region)
                .postalCode(postalCode)
                .country(country)
                .phone(phone)
                .fax(fax).build();
    }
}
