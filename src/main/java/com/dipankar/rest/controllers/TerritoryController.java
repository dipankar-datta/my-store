package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Territory;
import com.dipankar.rest.dtos.response.TerritoryResponseDTO;
import com.dipankar.services.TerritoryService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
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
@RequestMapping("/api/territories")
@AllArgsConstructor
public class TerritoryController {

    private TerritoryService territoryService;

    @GetMapping
    @ApiOperation(
            value = "Gets all territories",
            notes = "Use this service only when necessary",
            response = List.class)
    public List<TerritoryResponseDTO> territoryList() {
        List<Territory> territories = territoryService.list();
        if (territories != null && !territories.isEmpty()) {
            return territories
                    .stream()
                    .map(TerritoryResponseDTO::entityToResponseDTO)
                    .collect(Collectors.toList());
        } else {
            return Collections.emptyList();
        }
    }

    @GetMapping(path = {"/{territoryId}"})
    @ApiOperation(
            value = "Gets Territory by id ",
            notes = "Please provide a valid id of a Territory in order to get the details of it.",
            response = TerritoryResponseDTO.class)
    public TerritoryResponseDTO getTerritoryById(
            @ApiParam(value = "ID of the Territory", required = true, example = "0")
            @PathVariable Long territoryId) {
        Optional<Territory> territoryOptional = territoryService.getById(territoryId);
        return TerritoryResponseDTO.entityToResponseDTO(territoryOptional.orElse(Territory.builder().build()));
    }
}
