package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Supplier;
import com.dipankar.rest.dtos.response.SupplierResponseDTO;
import com.dipankar.services.SupplierService;
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
@RequestMapping("suppliers")
public class SupplierController {

    @Autowired
    private SupplierService supplierService;

    @GetMapping
    public List<SupplierResponseDTO> supplierList() {
        List<Supplier> suppliers = supplierService.list();
        if (suppliers != null && !suppliers.isEmpty()) {
            return suppliers
                    .stream()
                    .map(SupplierResponseDTO::entityToResponseDTO)
                    .collect(Collectors.toList());
        } else {
            return Collections.emptyList();
        }
    }

    @GetMapping(path = {"/{supplierId}"})
    public SupplierResponseDTO getSupplierById(@PathVariable Long supplierId) {
        Optional<Supplier> supplierOptional = supplierService.getById(supplierId);
        return SupplierResponseDTO.entityToResponseDTO(supplierOptional.orElse(Supplier.builder().build()));
    }
}
