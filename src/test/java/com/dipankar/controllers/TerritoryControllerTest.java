package com.dipankar.controllers;

import com.dipankar.data.entities.Region;
import com.dipankar.data.entities.Territory;
import com.dipankar.rest.dtos.response.RegionResponseDTO;
import com.dipankar.rest.dtos.response.SupplierResponseDTO;
import com.dipankar.rest.dtos.response.TerritoryResponseDTO;
import com.dipankar.services.TerritoryService;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;

import java.util.Arrays;
import java.util.Optional;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class TerritoryControllerTest extends AbstractControllerTest{

    @MockBean
    private TerritoryService territoryService;

    @Test
    public void list() throws Exception {
        Mockito.when(territoryService.list()).thenReturn(Arrays.asList(getTerritory()));
        mockMvc.perform(get("/territories"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Arrays.asList(getTerritoryResponseDTO()))));
    }

    @Test
    public void getById() throws Exception {
        Mockito.when(territoryService.getById(1L)).thenReturn(Optional.of(getTerritory()));
        mockMvc.perform(get("/territories/1"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Optional.of(getTerritoryResponseDTO()))));
    }

    private Territory getTerritory() {
        return Territory.builder()
                .id(1L)
                .territoryId("100")
                .region(Region.builder().id(1L).build())
                .build();
    }

    private TerritoryResponseDTO getTerritoryResponseDTO() {
        return TerritoryResponseDTO.builder()
                .id(1L)
                .territoryId("100")
                .region(RegionResponseDTO.builder().id(1L).build())
                .build();
    }
}
