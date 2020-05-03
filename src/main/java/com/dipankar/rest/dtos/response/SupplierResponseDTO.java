package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Product;
import com.dipankar.data.entities.Supplier;
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
public class SupplierResponseDTO implements Serializable {


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

    @JsonProperty("homePage")
    private String homePage;

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
