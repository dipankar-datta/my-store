package com.dipankar.controllers;

import com.dipankar.data.entities.Category;
import com.dipankar.data.entities.Product;
import com.dipankar.data.entities.Supplier;
import com.dipankar.rest.dtos.response.CategoryResponseDTO;
import com.dipankar.rest.dtos.response.ProductResponseDTO;
import com.dipankar.rest.dtos.response.SupplierResponseDTO;
import com.dipankar.services.ProductService;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;

import java.util.Collections;
import java.util.Optional;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class ProductControllerTest  extends AbstractControllerTest{

    @MockBean
    private ProductService productService;

    @Test
    public void list() throws Exception {
        Mockito.when(productService.list()).thenReturn(Collections.singletonList(getProduct()));

        mockMvc.perform(get("/api/products"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(
                        content().json(
                                objectMapper.writeValueAsString(
                                        Collections.singletonList(getProductResponseDTO())
                                )
                        )
                );
    }

    @Test
    public void getById() throws Exception {
        Mockito.when(productService.getById(1L)).thenReturn(Optional.of(getProduct()));

        mockMvc.perform(get("/api/products/1"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Optional.of(getProductResponseDTO()))));
    }

    private Product getProduct() {
        return Product.builder()
                .supplier(Supplier.builder().id(1L).build())
                .productName("Test Product Name")
                .category(Category.builder().id(1L).build())
                .quantityPerUnit("Test Quantity Per Unit")
                .reorderLevel(1)
                .unitPrice(10.10)
                .unitsInStock(10)
                .unitsOnOrder(10)
                .discontinued(false)
                .build();
    }

    private ProductResponseDTO getProductResponseDTO() {
        return ProductResponseDTO.builder()
                .supplier(SupplierResponseDTO.builder().id(1L).build())
                .productName("Test Product Name")
                .category(CategoryResponseDTO.builder().id(1L).build())
                .quantityPerUnit("Test Quantity Per Unit")
                .reorderLevel(1)
                .unitPrice(10.10)
                .unitsInStock(10)
                .unitsOnOrder(10)
                .discontinued(false)
                .build();
    }
}
