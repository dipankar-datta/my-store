package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Territory;
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
@ApiModel(description = "Details of the Territory")
public class TerritoryResponseDTO implements Serializable {

    @JsonProperty("id")
    @ApiModelProperty(notes = "ID of the Territory")
    private Long id;

    @JsonProperty("territoryId")
    @ApiModelProperty(notes = "Code of the Territory")
    private String territoryId;

    @JsonProperty("territoryDescription")
    @ApiModelProperty(notes = "Description of the Territory")
    private String territoryDescription;

    @JsonProperty("region")
    @ApiModelProperty(notes = "Region of the Territory")
    private RegionResponseDTO region;

    @JsonIgnore
    public static TerritoryResponseDTO entityToResponseDTO(Territory territory) {
        return TerritoryResponseDTO.builder()
                .id(territory.getId())
                .territoryId(territory.getTerritoryId())
                .territoryDescription(territory.getTerritoryDescription())
                .region(RegionResponseDTO.entityToResponseDTO(territory.getRegion())).build();
    }
}
