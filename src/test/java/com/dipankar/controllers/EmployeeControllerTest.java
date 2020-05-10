package com.dipankar.controllers;

import com.dipankar.data.entities.Employee;
import com.dipankar.data.entities.Region;
import com.dipankar.data.entities.Territory;
import com.dipankar.rest.dtos.response.EmployeeResponseDTO;
import com.dipankar.rest.dtos.response.RegionResponseDTO;
import com.dipankar.rest.dtos.response.TerritoryResponseDTO;
import com.dipankar.services.EmployeeService;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;

import java.util.Arrays;
import java.util.Date;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class EmployeeControllerTest extends AbstractControllerTest {

    @MockBean
    private EmployeeService employeeService;

    @Test
    public void list() throws Exception {
        Employee employee = Employee
                .builder()
                .id(1L)
                .firstName("Test First Name")
                .lastName("Test Last Name")
                .birthDate(new Date())
                .hireDate(new Date())
                .address("Test Address")
                .city("Test City")
                .country("Test Country")
                .extension("Test Extension")
                .homePhone("Test Home Phone")
                .postalCode("Test Postal Code")
                .notes("Test Notes")
                .salary(10F)
                .title("Test Title")
                .territories(Arrays.asList(Territory.builder().region(Region.builder().build()).build()))
                .build();

        Mockito.when(employeeService.list()).thenReturn(Arrays.asList(employee));

        EmployeeResponseDTO employeeResponseDTO = EmployeeResponseDTO
                .builder()
                .id(1L)
                .firstName("Test First Name")
                .lastName("Test Last Name")
                .birthDate(new Date())
                .hireDate(new Date())
                .address("Test Address")
                .city("Test City")
                .country("Test Country")
                .extension("Test Extension")
                .homePhone("Test Home Phone")
                .postalCode("Test Postal Code")
                .notes("Test Notes")
                .salary(10F)
                .title("Test Title")
                .territories(Arrays.asList(TerritoryResponseDTO.builder().region(RegionResponseDTO.builder().build()).build()))
                .build();

        mockMvc.perform(get("/employees"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Arrays.asList(employeeResponseDTO))));
    }
}
