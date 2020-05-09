package com.dipankar.rest.dtos.response;

import com.dipankar.data.entities.Category;
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
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ApiModel(description = "Details of the Category")
public class CategoryResponseDTO implements Serializable {

    @JsonProperty("id")
    @ApiModelProperty(notes = "ID of the category")
    private Long id;

    @JsonProperty("name")
    @ApiModelProperty(notes = "Name of the category")
    private String name;

    @JsonProperty("description")
    @ApiModelProperty(notes = "Description of the category")
    private String description;

    @JsonIgnore
    public static CategoryResponseDTO entityToResponseDTO(Category category) {
        return CategoryResponseDTO.builder()
                .id(category.getId())
                .name(category.getName())
                .description(category.getDescription()).build();
    }
}
