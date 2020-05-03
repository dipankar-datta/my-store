package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Region;
import com.dipankar.data.entities.Territory;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RegionResponseDTO implements Serializable {

    @JsonProperty("id")
    private Long id;

    @JsonProperty("description")
    private String description;

    public static RegionResponseDTO entityToResponseDTO(Region region) {
        return RegionResponseDTO.builder()
                .id(region.getId())
                .description(region.getDescription()).build();
    }
}
