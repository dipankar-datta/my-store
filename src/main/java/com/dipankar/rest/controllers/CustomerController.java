package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Customer;
import com.dipankar.rest.dtos.response.CustomerResponseDTO;
import com.dipankar.services.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.Serializable;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("customers")
public class CustomerController implements Serializable {

    @Autowired
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
            return null;
        }
    }
}
