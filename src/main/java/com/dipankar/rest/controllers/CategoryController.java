package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Category;
import com.dipankar.rest.dtos.response.CategoryResponseDTO;
import com.dipankar.services.CategoryService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/categories")
@AllArgsConstructor
public class CategoryController {

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
            response = CategoryResponseDTO.class)
    public CategoryResponseDTO getCategoryById(
            @ApiParam(value = "ID of the Category you need", required = true, example = "0")
            @PathVariable Long categoryId) {
        Optional<Category> categoryOptional = categoryService.getById(categoryId);
        return CategoryResponseDTO.entityToResponseDTO(categoryOptional.orElse(Category.builder().build()));
    }
}
