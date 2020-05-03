package com.dipankar.rest.dtos.request;

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
public class ShipperRequestDTO implements Serializable {

    @JsonProperty("id")
    private Long id;

    @NotNull(message = "Company name cannot be null")
    @Size(min = 4, max = 120, message = "Company name should be between 4 and 120 characters long")
    @JsonProperty("companyName")
    private String companyName;

    @NotNull(message = "Phone cannot be null")
    @Size(min = 10, max = 120, message = "Description should be between 10 and 120 characters long")
    @JsonProperty("phone")
    private String phone;
}
