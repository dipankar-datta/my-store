package com.dipankar.rest.dtos.request;

import com.dipankar.data.entities.Category;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CategoryRequestDTO implements RequestDTO<Category>, Serializable {

    private Long id;

    @NotNull(message = "Category name cannot be null")
    @Size(min = 4, max = 20, message = "Category should be between 4 and 20 characters long")
    private String name;

    @NotNull(message = "Category Description cannot be null")
    @Size(min = 4, max = 50, message = "Description should be between 4 and 50 characters long")
    private String description;

    public Category toEntity() {
        return Category.builder()
                .id(id)
                .name(name)
                .description(description).build();
    }
}
