package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Employee;
import com.dipankar.data.entities.Shipper;
import com.dipankar.data.entities.Supplier;
import com.dipankar.rest.dtos.response.ShipperResponseDTO;
import com.dipankar.rest.dtos.response.SupplierResponseDTO;
import com.dipankar.services.SupplierService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.Serializable;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/suppliers")
public class SupplierController implements Serializable {

    @Autowired
    private SupplierService supplierService;

    @GetMapping
    @ApiOperation(
            value = "Gets all Suppliers",
            notes = "Use this service only when necessary",
            response = List.class)
    public List<SupplierResponseDTO> supplierList() {
        List<Supplier> suppliers = supplierService.list();
        if (suppliers != null && !suppliers.isEmpty()) {
            return suppliers
                    .stream()
                    .map(SupplierResponseDTO::entityToResponseDTO)
                    .collect(Collectors.toList());
        } else {
            return null;
        }
    }

    @GetMapping(path = {"/{supplierId}"})
    @ApiOperation(
            value = "Gets Supplier by id ",
            notes = "Please provide a valid id of a Supplier in order to get the details of it.",
            response = Employee.class)
    public SupplierResponseDTO getSupplierById(
            @ApiParam(value = "ID of the Supplier", required = true, example = "0")
            @PathVariable Long supplierId) {
        Optional<Supplier> supplierOptional = supplierService.getById(supplierId);
        return supplierOptional.isPresent() ?
                SupplierResponseDTO.entityToResponseDTO(supplierOptional.get()) : null;
    }
}
