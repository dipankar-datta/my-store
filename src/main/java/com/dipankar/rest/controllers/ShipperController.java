package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Employee;
import com.dipankar.data.entities.Region;
import com.dipankar.data.entities.Shipper;
import com.dipankar.rest.dtos.response.RegionResponseDTO;
import com.dipankar.rest.dtos.response.ShipperResponseDTO;
import com.dipankar.services.ShipperService;
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
@RequestMapping("/api/shippers")
public class ShipperController implements Serializable {

    @Autowired
    private ShipperService shipperService;

    @GetMapping
    @ApiOperation(
            value = "Gets all Shippers",
            notes = "Use this service only when necessary",
            response = List.class)
    public List<ShipperResponseDTO> shipperList() {
        List<Shipper> shippers = shipperService.list();
        if (shippers != null && !shippers.isEmpty()) {
            return shippers
                    .stream()
                    .map(ShipperResponseDTO::entityToResponseDTO)
                    .collect(Collectors.toList());
        } else {
            return null;
        }
    }

    @GetMapping(path = {"/{shipperId}"})
    @ApiOperation(
            value = "Gets Shipper by id ",
            notes = "Please provide a valid id of a Shipper in order to get the details of it.",
            response = Employee.class)
    public ShipperResponseDTO getShipperById(
            @ApiParam(value = "ID of the Shipper", required = true, example = "0")
            @PathVariable Long shipperId) {
        Optional<Shipper> shipperOptional = shipperService.getById(shipperId);
        return shipperOptional.isPresent() ?
                ShipperResponseDTO.entityToResponseDTO(shipperOptional.get()) : null;
    }
}
