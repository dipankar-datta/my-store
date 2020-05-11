package com.dipankar.controllers;

import com.dipankar.data.entities.Region;
import com.dipankar.rest.dtos.response.RegionResponseDTO;
import com.dipankar.services.RegionService;
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

public class RegionControllerTest extends AbstractControllerTest{

    @MockBean
    private RegionService regionService;

    @Test
    public void list() throws Exception {
        Mockito.when(regionService.list()).thenReturn(Arrays.asList(getRegion()));
        mockMvc.perform(get("/regions"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Arrays.asList(getRegionResponseDTO()))));
    }

    @Test
    public void getById() throws Exception {
        Mockito.when(regionService.getById(1L)).thenReturn(Optional.of(getRegion()));
        mockMvc.perform(get("/regions/1"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Optional.of(getRegionResponseDTO()))));
    }

    private Region getRegion() {
        return Region.builder().id(1L).build();
    }

    private RegionResponseDTO getRegionResponseDTO() {
        return  RegionResponseDTO.builder().id(1L).build();
    }
}
