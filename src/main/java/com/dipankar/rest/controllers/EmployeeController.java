package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Employee;
import com.dipankar.rest.dtos.response.EmployeeResponseDTO;
import com.dipankar.services.EmployeeService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/employees")
public class EmployeeController {

    private EmployeeService employeeService;

    @GetMapping
    @ApiOperation(
            value = "Gets all Employees",
            notes = "Use this service only when necessary",
            response = List.class)
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
    @ApiOperation(
            value = "Gets Employee by id ",
            notes = "Please provide a valid id of a Employee in order to get the details of it.",
            response = EmployeeResponseDTO.class)
    public EmployeeResponseDTO getEmployeeById(
            @ApiParam(value = "ID of the Employee", required = true, example = "0")
            @PathVariable Long employeeId) {
        Optional<Employee> employeeOptional = employeeService.getById(employeeId);
        return EmployeeResponseDTO.entityToResponseDTO(employeeOptional.orElse(Employee.builder().build()));
    }
}
