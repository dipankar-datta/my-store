package com.dipankar.rest.dtos.request;

import com.dipankar.data.entities.Employee;
import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EmployeeRequestDTO implements RequestDTO<Employee>, Serializable {

    @JsonProperty("id")
    private Long id;

    @NotNull(message = "Last name cannot be null")
    @Size(min = 4, max = 50, message = "Last name should be between 4 and 50 characters long")
    @JsonProperty("lastName")
    private String lastName;

    @NotNull(message = "First name cannot be null")
    @Size(min = 4, max = 50, message = "First name should be between 4 and 50 characters long")
    @JsonProperty("firstName")
    private String firstName;

    @NotNull(message = "Title cannot be null")
    @Size(min = 4, max = 50, message = "Title should be between 4 and 50 characters long")
    @JsonProperty("title")
    private String title;

    @NotNull(message = "Title of courtesy cannot be null")
    @Size(min = 4, max = 50, message = "Title of courtesy should be between 4 and 50 characters long")
    @JsonProperty("titleOfCourtesy")
    private String titleOfCourtesy;

    @NotNull(message = "Birth date cannot be null")
    @Size(min = 10, max = 120, message = "Birth date should be between 10 and 120 characters long")
    @JsonProperty("birthDate")
    private Date birthDate;

    @NotNull(message = "Hire date cannot be null")
    @Size(min = 10, max = 120, message = "Hire date should be between 10 and 120 characters long")
    @JsonProperty("hireDate")
    private Date hireDate;

    @NotNull(message = "Address cannot be null")
    @Size(min = 10, max = 120, message = "Address should be between 10 and 120 characters long")
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
    @Size(min = 6, max = 20, message = "Postal code should be between 4 and 50 characters long")
    @JsonProperty("postalCode")
    private String postalCode;

    @NotNull(message = "Country cannot be null")
    @Size(min = 4, max = 50, message = "Country should be between 4 and 50 characters long")
    @JsonProperty("country")
    private String country;

    @NotNull(message = "Home phone cannot be null")
    @Size(min = 10, max = 120, message = "Home phone should be between 10 and 120 characters long")
    @JsonProperty("homePhone")
    private String homePhone;

    @NotNull(message = "Extension cannot be null")
    @Size(min = 2, max = 20, message = "Extension should be between 2 and 20 characters long")
    @JsonProperty("extension")
    private String extension;

    @NotNull(message = "Notes cannot be null")
    @Size(min = 10, max = 5000, message = "Notes should be between 10 and 5000 characters long")
    @JsonProperty("notes")
    private String notes;

    @Size(min = 4, max = 50, message = "Reports should be between 4 and 50 characters long")
    @JsonProperty("reportsTo")
    private EmployeeRequestDTO reportsTo;

    @NotNull(message = "Salary cannot be null")
    @Size(min = 4, max = 50, message = "Salary should be between 4 and 50 characters long")
    @JsonProperty("salary")
    private Float salary;

    @JsonProperty("territories")
    private List<TerritoryRequestDTO> territories;

    public Employee toEntity() {
        return Employee.builder()
                .id(id)
                .lastName(lastName)
                .firstName(firstName)
                .title(title)
                .titleOfCourtesy(titleOfCourtesy)
                .birthDate(birthDate)
                .hireDate(hireDate)
                .address(address)
                .city(city)
                .region(region)
                .postalCode(postalCode)
                .country(country)
                .homePhone(homePhone)
                .extension(extension)
                .notes(notes)
                .reportsTo(reportsTo.toEntity())
                .salary(salary)
                .territories(territories.stream().map(tr -> tr.toEntity()).collect(Collectors.toList())).build();

    }
}