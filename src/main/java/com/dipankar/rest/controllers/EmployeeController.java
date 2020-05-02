package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Employee;
import com.dipankar.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.Serializable;
import java.util.List;

@RestController
@RequestMapping("employees")
public class EmployeeController implements Serializable {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping
    public List<Employee> employeeList() {
        return employeeService.list();
    }
}
