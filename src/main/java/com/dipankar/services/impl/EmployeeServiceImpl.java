package com.dipankar.services.impl;

import com.dipankar.data.entities.Employee;
import com.dipankar.data.repositories.EmployeeRepository;
import com.dipankar.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    @Override
    public List<Employee> list() {
        return employeeRepository.findAll();
    }

    @Override
    public Employee create(Employee item) {
        return employeeRepository.save(item);
    }

    @Override
    public Employee update(Employee item) {
        return employeeRepository.save(item);
    }

    @Override
    public <S extends Employee> Iterable<S> saveAll(Iterable<S> items) {
        return employeeRepository.saveAll(items);
    }

    @Override
    public Optional<Employee> getById(Long id) {
        return employeeRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        employeeRepository.deleteById(id);
    }

    @Override
    public void delete(Employee item) {
        employeeRepository.delete(item);
    }
}
