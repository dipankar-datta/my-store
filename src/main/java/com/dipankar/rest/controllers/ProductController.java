package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Employee;
import com.dipankar.data.entities.Order;
import com.dipankar.data.entities.Product;
import com.dipankar.rest.dtos.response.OrderResponseDTO;
import com.dipankar.rest.dtos.response.ProductResponseDTO;
import com.dipankar.services.ProductService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/products")
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping
    @ApiOperation(
            value = "Gets all Products",
            notes = "Use this service only when necessary",
            response = List.class)
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

    @GetMapping(path = {"/{productId}"})
    @ApiOperation(
            value = "Gets Product by id ",
            notes = "Please provide a valid id of a Product in order to get the details of it.",
            response = Employee.class)
    public ProductResponseDTO getProductById(
            @ApiParam(value = "ID of the Product", required = true, example = "0")
            @PathVariable Long productId) {
        Optional<Product> productOptional = productService.getById(productId);
        return productOptional.isPresent() ?
                ProductResponseDTO.entityToResponseDTO(productOptional.get()) : null;

    }
}

