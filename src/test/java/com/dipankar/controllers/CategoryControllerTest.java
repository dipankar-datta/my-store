package com.dipankar.controllers;

import com.dipankar.data.entities.Category;
import com.dipankar.rest.dtos.response.CategoryResponseDTO;
import com.dipankar.services.CategoryService;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

import java.util.Arrays;
import java.util.Optional;

public class CategoryControllerTest extends AbstractControllerTest{

    @MockBean
    private CategoryService categoryService;

    @Test
    public void list() throws Exception {

        Mockito.when(categoryService.list()).thenReturn(Arrays.asList(getCategory()));
        mockMvc.perform(get("/categories"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(
                        content()
                                .json(objectMapper.writeValueAsString(
                                        Arrays.asList(getCategoryResponseDTO())
                                        )
                                )
                );
    }

    @Test
    public void getById() throws Exception {
        Mockito.when(categoryService.getById(1L)).thenReturn(Optional.of(getCategory()));
        mockMvc.perform(get("/categories/1"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(
                        content().json(
                                objectMapper.writeValueAsString(
                                        Optional.of(getCategoryResponseDTO()
                                        )
                                )
                        )
                );
    }

    private Category getCategory() {
        return Category
                .builder()
                .id(1L)
                .name("Test Category")
                .description("This is test category description")
                .build();
    }

    private CategoryResponseDTO getCategoryResponseDTO() {
        return CategoryResponseDTO
                .builder()
                .id(1L)
                .name("Test Category")
                .description("This is test category description")
                .build();
    }


}
