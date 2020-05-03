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
public class ShipperResponseDTO implements Serializable {

    @JsonProperty("id")
    private Long id;

    @JsonProperty("companyName")
    private String companyName;

    @JsonProperty("phone")
    private String phone;
}
