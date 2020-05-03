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
public class TerritoryRequestDTO implements Serializable {

    @JsonProperty("id")
    private Long id;

    @NotNull(message = "Territory cannot be null")
    @Size(min = 1, max = 50, message = "Last nameTerritory should be between 4 and 50 characters long")
    @JsonProperty("territoryId")
    private String territoryId;

    @NotNull(message = "Territory description cannot be null")
    @Size(min = 4, max = 120, message = "Territory description should be between 4 and 120 characters long")
    @JsonProperty("territoryDescription")
    private String territoryDescription;

    @NotNull(message = "Region cannot be null")
    @Size(min = 1, max = 50, message = "Region should be between 4 and 50 characters long")
    @JsonProperty("region")
    private RegionRequestDTO region;
}
