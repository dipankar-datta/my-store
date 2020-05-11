package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Category;
import com.dipankar.rest.dtos.response.CategoryResponseDTO;
import com.dipankar.services.CategoryService;
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
@RequestMapping("/categories")
@AllArgsConstructor
public class CategoryController{

    private CategoryService categoryService;

    @GetMapping
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

    @GetMapping(path = {"/{categoryId}"})
    public CategoryResponseDTO getCategoryById(@PathVariable Long categoryId) {
        Optional<Category> categoryOptional = categoryService.getById(categoryId);
        return CategoryResponseDTO.entityToResponseDTO(categoryOptional.orElse(Category.builder().build()));
    }
}
