package com.dipankar.controllers;

import com.dipankar.data.entities.Shipper;
import com.dipankar.rest.dtos.response.ShipperResponseDTO;
import com.dipankar.services.ShipperService;
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

public class ShipperControllerTest extends AbstractControllerTest{

    @MockBean
    private ShipperService shipperService;

    @Test
    public void list() throws Exception {
        Mockito.when(shipperService.list()).thenReturn(Collections.singletonList(getShipper()));

        mockMvc.perform(get("/shippers"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(
                        content().json(
                                objectMapper.writeValueAsString(
                                        Collections.singletonList(getShipperResponseDTO())
                                )
                        )
                );
    }

    @Test
    public void getById() throws Exception {
        Mockito.when(shipperService.getById(1L)).thenReturn(Optional.of(getShipper()));

        mockMvc.perform(get("/shippers/1"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Optional.of(getShipperResponseDTO()))));
    }

    private Shipper getShipper() {
        return Shipper.builder()
                .id(1L)
                .build();
    }

    private ShipperResponseDTO getShipperResponseDTO() {
        return ShipperResponseDTO.builder()
                .id(1L)
                .build();
    }
}
