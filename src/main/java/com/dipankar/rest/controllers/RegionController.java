package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Region;
import com.dipankar.rest.dtos.response.RegionResponseDTO;
import com.dipankar.services.RegionService;
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
@RequestMapping("regions")
public class RegionController {

    @Autowired
    private RegionService regionService;

    @GetMapping
    public List<RegionResponseDTO> regionList() {
        List<Region> regions = regionService.list();
        if (regions != null && !regions.isEmpty()) {
            return regions
                    .stream()
                    .map(RegionResponseDTO::entityToResponseDTO)
                    .collect(Collectors.toList());
        } else {
            return Collections.emptyList();
        }
    }

    @GetMapping(path = {"/{regionId}"})
    public RegionResponseDTO getRegionById(@PathVariable Long regionId) {
        Optional<Region> regionOptional = regionService.getById(regionId);
        return RegionResponseDTO.entityToResponseDTO(regionOptional.orElse(Region.builder().build()));
    }
}
