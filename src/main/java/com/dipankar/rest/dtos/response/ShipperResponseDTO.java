package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Shipper;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ApiModel(description = "Details of the Shipper")
public class ShipperResponseDTO implements Serializable {

    @JsonProperty("id")
    @ApiModelProperty(notes = "ID of the Shipper")
    private Long id;

    @JsonProperty("companyName")
    @ApiModelProperty(notes = "Company name of the Shipper")
    private String companyName;

    @JsonProperty("phone")
    @ApiModelProperty(notes = "Phone number of the Shipper")
    private String phone;

    @JsonIgnore
    public static ShipperResponseDTO entityToResponseDTO(Shipper shipper) {
        return ShipperResponseDTO.builder()
                .id(shipper.getId())
                .companyName(shipper.getCompanyName())
                .phone(shipper.getPhone()).build();
    }
}
