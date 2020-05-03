package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Shipper;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ShipperResponseDTO implements Serializable {

    @JsonProperty("id")
    private Long id;

    @JsonProperty("companyName")
    private String companyName;

    @JsonProperty("phone")
    private String phone;

    public static ShipperResponseDTO entityToResponseDTO(Shipper shipper) {
        return ShipperResponseDTO.builder()
                .id(shipper.getId())
                .companyName(shipper.getCompanyName())
                .phone(shipper.getPhone()).build();
    }
}
