package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Supplier;
import com.dipankar.rest.dtos.response.SupplierResponseDTO;
import com.dipankar.services.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.Serializable;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("suppliers")
public class SupplierController implements Serializable {

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
            return null;
        }
    }
}
