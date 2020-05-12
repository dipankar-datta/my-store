package com.dipankar.controllers;

import com.dipankar.data.entities.Employee;
import com.dipankar.data.entities.Region;
import com.dipankar.data.entities.Territory;
import com.dipankar.rest.dtos.response.EmployeeResponseDTO;
import com.dipankar.rest.dtos.response.RegionResponseDTO;
import com.dipankar.rest.dtos.response.TerritoryResponseDTO;
import com.dipankar.services.EmployeeService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;

import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Optional;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class EmployeeControllerTest extends AbstractControllerTest {

    @MockBean
    private EmployeeService employeeService;

    private Date dob;
    private Date hireDate;

    @BeforeEach
    public void setup() {
        this.dob = new Date();
        this.hireDate = new Date();
    }



    @Test
    public void list() throws Exception {
        Mockito.when(employeeService.list()).thenReturn(Collections.singletonList(getEmployee(dob, hireDate)));
        mockMvc.perform(get("/api/employees"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Collections.singletonList(getEmployeeResponseDTO(dob, hireDate)))));
    }

    @Test
    public void getById() throws Exception {
        Mockito.when(employeeService.getById(1L)).thenReturn(Optional.of(getEmployee(dob, hireDate)));
        mockMvc.perform(get("/api/employees/1"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Optional.of(getEmployeeResponseDTO(dob, hireDate)))));
    }

    private Employee getEmployee(Date dob, Date hireDate) {
        return  Employee
                .builder()
                .id(1L)
                .firstName("Test First Name")
                .lastName("Test Last Name")
                .birthDate(dob)
                .hireDate(hireDate)
                .address("Test Address")
                .city("Test City")
                .country("Test Country")
                .extension("Test Extension")
                .homePhone("Test Home Phone")
                .postalCode("Test Postal Code")
                .notes("Test Notes")
                .salary(10F)
                .title("Test Title")
                .territories(
                        Collections.singletonList(
                                Territory.builder().region(
                                        Region.builder().build()
                                ).build()
                        )
                )
                .build();
    }

    private EmployeeResponseDTO getEmployeeResponseDTO(Date dob, Date hireDate) {
        return EmployeeResponseDTO
                .builder()
                .id(1L)
                .firstName("Test First Name")
                .lastName("Test Last Name")
                .birthDate(dob)
                .hireDate(hireDate)
                .address("Test Address")
                .city("Test City")
                .country("Test Country")
                .extension("Test Extension")
                .homePhone("Test Home Phone")
                .postalCode("Test Postal Code")
                .notes("Test Notes")
                .salary(10F)
                .title("Test Title")
                .territories(
                        Collections.singletonList(
                                TerritoryResponseDTO.builder().region(
                                        RegionResponseDTO.builder().build()
                                ).build()
                        )
                )
                .build();
    }
}
