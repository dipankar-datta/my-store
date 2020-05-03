package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Customer;
import com.dipankar.data.entities.Employee;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
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
@Builder
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

    public static EmployeeResponseDTO entityToResponseDTO(Employee employee) {
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
                .reportsTo(EmployeeResponseDTO.entityToResponseDTO(employee.getReportsTo()))
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