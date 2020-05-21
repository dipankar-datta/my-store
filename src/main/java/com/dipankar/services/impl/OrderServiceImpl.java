package com.dipankar.services.impl;

import com.dipankar.data.entities.Order;
import com.dipankar.data.repositories.OrderRepository;
import com.dipankar.services.OrderService;
import lombok.AllArgsConstructor;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service @AllArgsConstructor
public class OrderServiceImpl implements OrderService {

    private OrderRepository orderRepository;

    @Override @Cacheable(value = "twenty-sec-cache")
    public List<Order> list() {
        return orderRepository.findAll();
    }

    @Override
    public Order create(Order item) {
        return orderRepository.save(item);
    }

    @Override
    public Order update(Order item) {
        return orderRepository.save(item);
    }

    @Override
    public <S extends Order> Iterable<S> saveAll(Iterable<S> items) {
        return orderRepository.saveAll(items);
    }

    @Override
    public Optional<Order> getById(Long id) {
        return orderRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        orderRepository.deleteById(id);
    }

    @Override
    public void delete(Order item) {
        orderRepository.delete(item);
    }
}
