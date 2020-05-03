package com.dipankar.rest.dtos.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EmployeeResponseDTO implements Serializable {

    @JsonProperty("id")
    private Long id;

    @JsonProperty("lastName")
    private String lastName;

    @JsonProperty("firstName")
    private String firstName;

    @JsonProperty("title")
    private String title;

    @JsonProperty("titleOfCourtesy")
    private String titleOfCourtesy;

    @JsonProperty("birthDate")
    private Date birthDate;

    @JsonProperty("hireDate")
    private Date hireDate;

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

    @JsonProperty("homePhone")
    private String homePhone;

    @JsonProperty("extension")
    private String extension;

    @JsonProperty("notes")
    private String notes;

    @JsonProperty("reportsTo")
    private EmployeeResponseDTO reportsTo;
    
    @JsonProperty("salary")
    private Float salary;

    @JsonProperty("territories")
    private List<TerritoryResponseDTO> territories;
}