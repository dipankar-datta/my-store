package com.dipankar.controllers;

import com.dipankar.data.entities.*;
import com.dipankar.rest.dtos.response.*;
import com.dipankar.services.OrderService;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;

import java.util.Arrays;
import java.util.Date;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class OrderControllerTest extends AbstractControllerTest{

    @MockBean
    private OrderService orderService;

    @Test
    public void list() throws Exception {
        Date orderDate = new Date();
        Date requiredDate = new Date();
        Date shippedDate = new Date();
        OrderItem orderItem = OrderItem.builder()
                .orderId(1L)
                .product(Product.builder().id(1L).supplier(Supplier.builder().id(1L).build()).category(Category.builder().id(1L).build()).build())
                .build();
        Order order = Order
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

        Mockito.when(orderService.list()).thenReturn(Arrays.asList(order));

        OrderItemResponseDTO orderItemResponseDTO = OrderItemResponseDTO.builder()
                .orderId(1L)
                .product(ProductResponseDTO.builder().id(1L).supplier(SupplierResponseDTO.builder().id(1L).build()).category(CategoryResponseDTO.builder().id(1L).build()).build())
                .build();
        OrderResponseDTO orderResponseDTO = OrderResponseDTO
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

        mockMvc.perform(get("/orders"))
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json(objectMapper.writeValueAsString(Arrays.asList(orderResponseDTO))));
    }
}
