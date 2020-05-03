package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Employee;
import com.dipankar.rest.dtos.response.EmployeeResponseDTO;
import com.dipankar.services.EmployeeService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.Serializable;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("employees")
public class EmployeeController implements Serializable {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping
    public List<EmployeeResponseDTO> employeeList() {
        List<Employee> employeeList = employeeService.list();
        if (employeeList != null && !employeeList.isEmpty()) {
            return employeeList
                    .stream()
                    .map(EmployeeResponseDTO::entityToResponseDTO)
                    .collect(Collectors.toList());
        } else {
            return null;
        }
    }
}
