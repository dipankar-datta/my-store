package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Employee;
import com.dipankar.rest.dtos.response.EmployeeResponseDTO;
import com.dipankar.services.EmployeeService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/employees")
@AllArgsConstructor
public class EmployeeController {

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
            return Collections.emptyList();
        }
    }

    @GetMapping(path = {"/{employeeId}"})
    public EmployeeResponseDTO getEmployeeById(@PathVariable Long employeeId) {
        Optional<Employee> employeeOptional = employeeService.getById(employeeId);
        return EmployeeResponseDTO.entityToResponseDTO(employeeOptional.orElse(Employee.builder().build()));
    }
}
