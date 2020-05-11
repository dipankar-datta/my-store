package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Territory;
import com.dipankar.rest.dtos.response.TerritoryResponseDTO;
import com.dipankar.services.TerritoryService;
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
@RequestMapping("territories")
public class TerritoryController {

    @Autowired
    private TerritoryService territoryService;

    @GetMapping
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
    public TerritoryResponseDTO getTerritoryById(@PathVariable Long territoryId) {
        Optional<Territory> territoryOptional = territoryService.getById(territoryId);
        return TerritoryResponseDTO.entityToResponseDTO(territoryOptional.orElse(Territory.builder().build()));
    }
}
