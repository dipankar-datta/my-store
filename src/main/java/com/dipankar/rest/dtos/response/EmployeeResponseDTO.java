package com.dipankar.rest.dtos.response;

import com.dipankar.apputility.AppConstants;
import com.dipankar.data.entities.Employee;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ApiModel(description = "Details of the Employee")
public class EmployeeResponseDTO implements Serializable {

    @JsonProperty("id")
    @ApiModelProperty(notes = "ID of the Employee")
    private Long id;

    @JsonProperty("lastName")
    @ApiModelProperty(notes = "Last name of the Employee")
    private String lastName;

    @JsonProperty("firstName")
    @ApiModelProperty(notes = "First name of the Employee")
    private String firstName;

    @JsonProperty("title")
    @ApiModelProperty(notes = "Title of the Employee")
    private String title;

    @JsonProperty("titleOfCourtesy")
    @ApiModelProperty(notes = "Title of courtesy of the Employee")
    private String titleOfCourtesy;

    @JsonProperty("birthDate")
    @ApiModelProperty(notes = "Date of birth of the Employee. Format " + AppConstants.DATE_FORMAT)
    private Date birthDate;

    @JsonProperty("hireDate")
    @ApiModelProperty(notes = "Date of joining of the Employee. Format " + AppConstants.DATE_FORMAT)
    private Date hireDate;

    @JsonProperty("address")
    @ApiModelProperty(notes = "Address of the Employee")
    private String address;

    @JsonProperty("city")
    @ApiModelProperty(notes = "City of the Employee")
    private String city;

    @JsonProperty("region")
    @ApiModelProperty(notes = "Region of the Employee")
    private String region;

    @JsonProperty("postalCode")
    @ApiModelProperty(notes = "Postal code of the Employee")
    private String postalCode;

    @JsonProperty("country")
    @ApiModelProperty(notes = "Country of the Employee")
    private String country;

    @JsonProperty("homePhone")
    @ApiModelProperty(notes = "Home phone number of the Employee")
    private String homePhone;

    @JsonProperty("extension")
    @ApiModelProperty(notes = "Extension of the Employee location")
    private String extension;

    @JsonProperty("notes")
    @ApiModelProperty(notes = "Notes of the Employee")
    private String notes;

    @JsonProperty("reportsTo")
    @ApiModelProperty(notes = "Employee reporting to")
    private EmployeeResponseDTO reportsTo;

    @JsonProperty("salary")
    @ApiModelProperty(notes = "Salary of the Employee")
    private Float salary;

    @JsonProperty("territories")
    @ApiModelProperty(notes = "Territories of the Employee")
    private List<TerritoryResponseDTO> territories;

    @JsonIgnore
    public static EmployeeResponseDTO entityToResponseDTO(Employee employee) {
        System.out.println("");
        return EmployeeResponseDTO.builder()
                .id(employee.getId())
                .lastName(employee.getLastName())
                .firstName(employee.getFirstName())
                .title(employee.getTitle())
                .titleOfCourtesy(employee.getTitleOfCourtesy())
                .birthDate(employee.getBirthDate())
                .hireDate(employee.getHireDate())
                .address(employee.getAddress())
                .city(employee.getCity())
                .region(employee.getRegion())
                .postalCode(employee.getPostalCode())
                .homePhone(employee.getHomePhone())
                .extension(employee.getExtension())
                .notes(employee.getNotes())
                .reportsTo(employee.getReportsTo() != null ? EmployeeResponseDTO.entityToResponseDTO(employee.getReportsTo()) : null)
                .salary(employee.getSalary())
                .territories(
                        employee
                                .getTerritories()
                                .stream()
                                .map(TerritoryResponseDTO::entityToResponseDTO)
                                .collect(Collectors.toList()))
                .build();
    }
}