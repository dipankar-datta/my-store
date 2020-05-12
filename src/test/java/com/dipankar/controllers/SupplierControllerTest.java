package com.dipankar.controllers;

import com.dipankar.data.entities.Supplier;
import com.dipankar.rest.dtos.response.SupplierResponseDTO;
import com.dipankar.services.SupplierService;
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

public class SupplierControllerTest extends AbstractControllerTest{

    @MockBean
    private SupplierService supplierService;

    @Test
    public void list() throws Exception {
        Mockito.when(supplierService.list()).thenReturn(Collections.singletonList(getSupplier()));

        mockMvc.perform(get("/api/suppliers"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(
                        content().json(
                                objectMapper.writeValueAsString(
                                        Collections.singletonList(getSupplierResponseDTO())
                                )
                        )
                );
    }

    @Test
    public void getById() throws Exception {
        Mockito.when(supplierService.getById(1L)).thenReturn(Optional.of(getSupplier()));

        mockMvc.perform(get("/api/suppliers/1"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Optional.of(getSupplierResponseDTO()))));
    }

    private Supplier getSupplier() {
        return Supplier.builder()
                .id(1L)
                .build();
    }

    private SupplierResponseDTO getSupplierResponseDTO(){
        return SupplierResponseDTO.builder()
                .id(1L)
                .build();
    }
}
