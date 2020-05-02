package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Category;
import com.dipankar.services.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.Serializable;
import java.util.List;

@RestController
@RequestMapping("categories")
public class CategoryController implements Serializable {

    @Autowired
    private CategoryService categoryService;

    @GetMapping
    public List<Category> categoryList() {
        return categoryService.list();
    }
}
