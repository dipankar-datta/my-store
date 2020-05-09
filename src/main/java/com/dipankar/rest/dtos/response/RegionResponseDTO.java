package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Region;
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
@ApiModel(description = "Details of the Region")
public class RegionResponseDTO implements Serializable {

    @JsonProperty("id")
    @ApiModelProperty(notes = "ID of the Region")
    private Long id;

    @JsonProperty("description")
    @ApiModelProperty(notes = "Description of the Region")
    private String description;

    @JsonIgnore
    public static RegionResponseDTO entityToResponseDTO(Region region) {
        return RegionResponseDTO.builder()
                .id(region.getId())
                .description(region.getDescription()).build();
    }
}
