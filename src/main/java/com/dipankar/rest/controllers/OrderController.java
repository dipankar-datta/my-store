package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Order;
import com.dipankar.rest.dtos.response.OrderResponseDTO;
import com.dipankar.services.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.Serializable;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("orders")
public class OrderController implements Serializable {

    @Autowired
    private OrderService orderService;

    @GetMapping
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
}
