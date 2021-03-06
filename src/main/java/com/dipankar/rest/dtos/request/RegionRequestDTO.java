package com.dipankar.rest.dtos.request;

import com.dipankar.data.entities.Region;
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
public class RegionRequestDTO implements RequestDTO<Region>, Serializable {

    @JsonProperty("id")
    private Long id;

    @NotNull(message = "Description cannot be null")
    @Size(min = 4, max = 120, message = "Description should be between 4 and 120 characters long")
    @JsonProperty("description")
    private String description;

    public Region toEntity() {
        return Region.builder()
                .id(id)
                .description(description).build();
    }
}
