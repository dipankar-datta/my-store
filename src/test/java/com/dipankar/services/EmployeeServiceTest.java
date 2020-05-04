package com.dipankar.services;

import com.dipankar.data.entities.Employee;
import com.dipankar.data.repositories.EmployeeRepository;

import static org.assertj.core.api.Assertions.assertThat;

import com.dipankar.services.impl.EmployeeServiceImpl;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.List;

@SpringBootTest
public class EmployeeServiceTest {

    private final EmployeeRepository employeeRepository = Mockito.mock(EmployeeRepository.class);

    private final EmployeeService employeeService = new EmployeeServiceImpl(employeeRepository);

    @Test
    public void list() {
        Mockito.when(employeeRepository.findAll()).thenReturn(Arrays.asList(Employee.builder().build()));
        List<Employee> employeeList = employeeService.list();
        assertThat(employeeList.size()).isEqualTo(1);
    }
}
