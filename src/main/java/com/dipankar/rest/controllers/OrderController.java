package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Order;
import com.dipankar.rest.dtos.response.OrderResponseDTO;
import com.dipankar.services.OrderService;
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
@RequestMapping("/orders")
@AllArgsConstructor
public class OrderController {

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
            return Collections.emptyList();
        }
    }

    @GetMapping(path = {"/{orderId}"})
    public OrderResponseDTO getOrderById(@PathVariable Long orderId) {
        Optional<Order> orderOptional = orderService.getById(orderId);
        return OrderResponseDTO.entityToResponseDTO(orderOptional.orElse(Order.builder().build()));

    }
}
