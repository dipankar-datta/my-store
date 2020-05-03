package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Territory;
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
public class TerritoryResponseDTO implements Serializable {

    @JsonProperty("id")
    private Long id;

    @JsonProperty("territoryId")
    private String territoryId;

    @JsonProperty("territoryDescription")
    private String territoryDescription;

    @JsonProperty("region")
    private RegionResponseDTO region;

    public static TerritoryResponseDTO entityToResponseDTO(Territory territory) {
        return TerritoryResponseDTO.builder()
                .id(territory.getId())
                .territoryId(territory.getTerritoryId())
                .territoryDescription(territory.getTerritoryDescription())
                .region(RegionResponseDTO.entityToResponseDTO(territory.getRegion())).build();
    }
}
