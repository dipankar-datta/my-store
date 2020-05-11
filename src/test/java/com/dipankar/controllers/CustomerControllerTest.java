package com.dipankar.controllers;

import com.dipankar.data.entities.Customer;
import com.dipankar.rest.dtos.response.CustomerResponseDTO;
import com.dipankar.services.CustomerService;
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

public class CustomerControllerTest extends AbstractControllerTest{

    @MockBean
    private CustomerService customerService;

    @Test
    public void list() throws Exception {

        Mockito.when(customerService.list()).thenReturn(Collections.singletonList(getCustomer()));
        mockMvc.perform(get("/api/customers"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Collections.singletonList(getCustomerResponseDTO()))));
    }

    @Test
    public void getById() throws Exception {
        Mockito.when(customerService.getById(1L)).thenReturn(Optional.of(getCustomer()));
        mockMvc.perform(get("/api/customers/1"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Optional.of(getCustomerResponseDTO()))));
    }

    private Customer getCustomer() {
        return Customer
                .builder()
                .id(1L)
                .city("Test City")
                .address("Test Address")
                .companyName("Test Company Name")
                .contactName("Test Contact Name")
                .contactTitle("Test Contact Title")
                .country("Test Country")
                .fax("Test Fax")
                .phone("Test Phone")
                .postalCode("Test Postal Code")
                .region("Test Region")
                .build();
    }

    private CustomerResponseDTO getCustomerResponseDTO() {
        return CustomerResponseDTO
                .builder()
                .id(1L)
                .city("Test City")
                .address("Test Address")
                .companyName("Test Company Name")
                .contactName("Test Contact Name")
                .contactTitle("Test Contact Title")
                .country("Test Country")
                .fax("Test Fax")
                .phone("Test Phone")
                .postalCode("Test Postal Code")
                .region("Test Region")
                .build();
    }
}
