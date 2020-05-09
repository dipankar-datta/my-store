package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Category;
import com.dipankar.rest.dtos.response.CategoryResponseDTO;
import com.dipankar.services.CategoryService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/categories")
public class CategoryController implements Serializable {

    @Autowired
    private CategoryService categoryService;

    @GetMapping
    @ApiOperation(
            value = "Gets all Categories",
            notes = "Use this service only when necessary",
            response = List.class)
    public List<CategoryResponseDTO> categoryList() {
        List<Category> categoryList = categoryService.list();
        if (categoryList != null && !categoryList.isEmpty()) {
            return categoryList
                    .stream()
                    .map(CategoryResponseDTO::entityToResponseDTO)
                    .collect(Collectors.toList());
        } else {
            return Collections.emptyList();
        }
    }

    @GetMapping("/{categoryId}")
    @ApiOperation(
            value = "Gets Category by id ",
            notes = "Please provide a valid id of a Category in order to get the details of it.",
            response = Category.class)
    public CategoryResponseDTO getCategoryById(
            @ApiParam(value = "ID of the Category you need", required = true, example = "0")
            @PathVariable Long categoryId) {
        Optional<Category> categoryOptional = categoryService.getById(categoryId);
        return categoryOptional.isPresent() ?
                CategoryResponseDTO.entityToResponseDTO(categoryOptional.get())
                : CategoryResponseDTO.builder().build();
    }
}


