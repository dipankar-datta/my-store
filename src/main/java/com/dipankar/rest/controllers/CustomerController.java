package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Customer;
import com.dipankar.rest.dtos.response.CustomerResponseDTO;
import com.dipankar.services.CustomerService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/customers")
@AllArgsConstructor
public class CustomerController {

    private CustomerService customerService;

    @GetMapping
    public List<CustomerResponseDTO> customerList() {
        List<Customer> customerList = customerService.list();
        if(customerList != null && !customerList.isEmpty()) {
            return customerList
                    .stream()
                    .map(CustomerResponseDTO::entityToResponseDTO)
                    .collect(Collectors.toList());
        } else {
            return Collections.emptyList();
        }
    }

    @GetMapping(path = {"/{customerId}"})
    public CustomerResponseDTO getCustomerById(@PathVariable Long customerId) {
        Optional<Customer> customerOptional = customerService.getById(customerId);
        return CustomerResponseDTO.entityToResponseDTO(customerOptional.orElse(Customer.builder().build()));
    }
}
