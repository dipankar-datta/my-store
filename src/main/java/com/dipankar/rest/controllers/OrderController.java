package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Employee;
import com.dipankar.data.entities.Order;
import com.dipankar.rest.dtos.response.EmployeeResponseDTO;
import com.dipankar.rest.dtos.response.OrderResponseDTO;
import com.dipankar.services.OrderService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.Serializable;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/orders")
public class OrderController implements Serializable {

    @Autowired
    private OrderService orderService;

    @GetMapping
    @ApiOperation(
            value = "Gets all Orders",
            notes = "Use this service only when necessary",
            response = List.class)
    public List<OrderResponseDTO> orderList() {
        List<Order> orderList =  orderService.list();
        if (orderList != null && !orderList.isEmpty()) {
            return orderList
                    .stream()
                    .map(OrderResponseDTO::entityToResponseDTO)
                    .collect(Collectors.toList());
        } else {
            return null;
        }
    }

    @GetMapping(path = {"/{orderId}"})
    @ApiOperation(
            value = "Gets Order by id ",
            notes = "Please provide a valid id of a Order in order to get the details of it.",
            response = Employee.class)
    public OrderResponseDTO getOrderById(
            @ApiParam(value = "ID of the Order", required = true, example = "0")
            @PathVariable Long orderId) {
        Optional<Order> orderOptional = orderService.getById(orderId);
        return orderOptional.isPresent() ?
                OrderResponseDTO.entityToResponseDTO(orderOptional.get()) : null;

    }
}
