package com.dipankar.controllers;

import com.dipankar.data.entities.Customer;
import com.dipankar.services.CustomerService;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import java.util.Arrays;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class CustomerControllerTest extends AbstractControllerTest{

    @MockBean
    private CustomerService customerService;

    @Test
    public void list() throws Exception {
        Customer customer = Customer
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

        Mockito.when(customerService.list()).thenReturn(Arrays.asList(customer));

        mockMvc.perform(get("/customers"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Arrays.asList(customer))));
    }
}
