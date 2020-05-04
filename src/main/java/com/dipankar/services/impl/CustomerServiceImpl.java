package com.dipankar.services.impl;

import com.dipankar.data.entities.Customer;
import com.dipankar.data.repositories.CustomerRepository;
import com.dipankar.services.CustomerService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service @AllArgsConstructor
public class CustomerServiceImpl implements CustomerService {

    private CustomerRepository customerRepository;

    @Override
    public List<Customer> list() {
        return customerRepository.findAll();
    }

    @Override
    public Customer create(Customer item) {
        return customerRepository.save(item);
    }

    @Override
    public Customer update(Customer item) {
        return customerRepository.save(item);
    }

    @Override
    public <S extends Customer> Iterable<S> saveAll(Iterable<S> items) {
        return customerRepository.saveAll(items);
    }

    @Override
    public Optional<Customer> getById(Long id) {
        return customerRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        customerRepository.deleteById(id);
    }

    @Override
    public void delete(Customer item) {
        customerRepository.delete(item);
    }
}
