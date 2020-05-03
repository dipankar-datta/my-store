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
}
