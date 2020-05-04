package com.dipankar.services;

import com.dipankar.data.entities.Customer;
import com.dipankar.data.repositories.CustomerRepository;
import com.dipankar.services.impl.CustomerServiceImpl;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.Arrays;
import java.util.List;

@SpringBootTest
public class CustomerServiceTest {

    private final CustomerRepository customerRepository = Mockito.mock(CustomerRepository.class);

    private final CustomerService customerService = new CustomerServiceImpl(customerRepository);

    @Test
    public void list() {
        Mockito.when(customerRepository.findAll()).thenReturn(Arrays.asList(Customer.builder().build()));
        List<Customer> customerList = customerService.list();
        assertThat(customerService.list().size()).isEqualTo(1);
    }
}
