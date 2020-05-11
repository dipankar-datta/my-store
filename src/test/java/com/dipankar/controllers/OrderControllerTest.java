package com.dipankar.controllers;

import com.dipankar.data.entities.*;
import com.dipankar.rest.dtos.response.*;
import com.dipankar.services.OrderService;
import org.aspectj.lang.annotation.Before;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;

import java.util.Arrays;
import java.util.Date;
import java.util.Optional;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class OrderControllerTest extends AbstractControllerTest{

    @MockBean
    private OrderService orderService;

    Date orderDate;
    Date requiredDate;
    Date shippedDate;

    @BeforeEach
    public void setup() {
        this.orderDate = new Date();
        this.requiredDate = new Date();
        this.shippedDate = new Date();
    }

    @Test
    public void list() throws Exception {
        Mockito.when(orderService.list()).thenReturn(Arrays.asList(getOrder(orderDate, requiredDate, shippedDate)));
        mockMvc.perform(get("/orders"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Arrays.asList(getOrderResponseDTO(orderDate, requiredDate, shippedDate)))));
    }

    @Test
    public void getById() throws Exception {
        Mockito.when(orderService.getById(1L)).thenReturn(Optional.of(getOrder(orderDate, requiredDate, shippedDate)));
        mockMvc.perform(get("/orders/1"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Optional.of(getOrderResponseDTO(orderDate, requiredDate, shippedDate)))));
    }

    private Order getOrder(Date orderDate, Date requiredDate, Date shippedDate) {
        OrderItem orderItem = OrderItem.builder()
                .orderId(1L)
                .product(Product.builder().id(1L).supplier(Supplier.builder().id(1L).build()).category(Category.builder().id(1L).build()).build())
                .build();
        return Order
                .builder()
                .orderDate(orderDate)
                .orderItems(Arrays.asList(orderItem))
                .requiredDate(requiredDate)
                .shipAddress("Test Shipping Address")
                .shipCity("Test Shipping City")
                .shippedDate(shippedDate)
                .shipCountry("Test Shipping Country")
                .shipName("Test Shipping Name")
                .shipPostalCode("Test Shipping Postal Code")
                .customer(Customer.builder().id(1L).build())
                .shipVia(Shipper.builder().id(1L).build())
                .build();
    }

    private OrderResponseDTO getOrderResponseDTO(Date orderDate, Date requiredDate, Date shippedDate) {
        OrderItemResponseDTO orderItemResponseDTO = OrderItemResponseDTO.builder()
                .orderId(1L)
                .product(ProductResponseDTO.builder().id(1L).supplier(SupplierResponseDTO.builder().id(1L).build()).category(CategoryResponseDTO.builder().id(1L).build()).build())
                .build();
        return OrderResponseDTO
                .builder()
                .orderDate(orderDate)
                .orderItems(Arrays.asList(orderItemResponseDTO))
                .requiredDate(requiredDate)
                .shipAddress("Test Shipping Address")
                .shipCity("Test Shipping City")
                .shippedDate(shippedDate)
                .shipCountry("Test Shipping Country")
                .shipName("Test Shipping Name")
                .shipPostalCode("Test Shipping Postal Code")
                .customer(CustomerResponseDTO.builder().id(1L).build())
                .shipVia(ShipperResponseDTO.builder().id(1L).build())
                .build();
    }
}
