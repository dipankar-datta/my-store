package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Product;
import com.dipankar.rest.dtos.response.ProductResponseDTO;
import com.dipankar.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("products")
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping
    public List<ProductResponseDTO> productList() {
        List<Product> productList = productService.list();
        if (productList != null && !productList.isEmpty()) {
            return productList
                    .stream()
                    .map(ProductResponseDTO::entityToResponseDTO)
                    .collect(Collectors.toList());
        } else {
            return null;
        }
    }
}
