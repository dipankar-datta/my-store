package com.dipankar.services;

import com.dipankar.data.entities.Order;
import com.dipankar.data.repositories.OrderRepository;
import static org.assertj.core.api.Assertions.assertThat;

import com.dipankar.services.impl.OrderServiceImpl;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.List;

@SpringBootTest
public class OrderServiceTest {

    private final OrderRepository orderRepository = Mockito.mock(OrderRepository.class);

    private final OrderService orderService = new OrderServiceImpl(orderRepository);

    @Test
    public void list() {
        Mockito.when(orderRepository.findAll()).thenReturn(Arrays.asList(Order.builder().build()));
        List<Order> orderList = orderService.list();
        assertThat(orderList.size()).isEqualTo(1);
    }
}
