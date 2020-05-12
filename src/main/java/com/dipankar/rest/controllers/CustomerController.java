package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Customer;
import com.dipankar.rest.dtos.response.CustomerResponseDTO;
import com.dipankar.services.CustomerService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import lombok.AllArgsConstructor;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/customers")
@AllArgsConstructor
public class CustomerController {

    private CustomerService customerService;

    @GetMapping
    @ApiOperation(
            value = "Gets all Customers",
            notes = "Use this service only when necessary",
            response = List.class)
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
    @ApiOperation(
            value = "Gets Customer by id ",
            notes = "Please provide a valid id of a Customer in order to get the details of it.",
            response = CustomerResponseDTO.class)
    public CustomerResponseDTO getCustomerById(
            @ApiParam(value = "ID of the Customer", required = true, example = "0")
            @PathVariable Long customerId) {
        Optional<Customer> customerOptional = customerService.getById(customerId);
        return CustomerResponseDTO.entityToResponseDTO(customerOptional.orElse(Customer.builder().build()));
    }
}
