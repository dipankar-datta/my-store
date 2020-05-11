package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Region;
import com.dipankar.rest.dtos.response.RegionResponseDTO;
import com.dipankar.services.RegionService;
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
@RequestMapping("/api/regions")
@AllArgsConstructor
public class RegionController {

    private RegionService regionService;

    @GetMapping
    @ApiOperation(
            value = "Gets all Regions",
            notes = "Use this service only when necessary",
            response = List.class)
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
    @ApiOperation(
            value = "Gets Region by id ",
            notes = "Please provide a valid id of a Region in order to get the details of it.",
            response = RegionResponseDTO.class)
    public RegionResponseDTO getRegionById(
            @ApiParam(value = "ID of the Region", required = true, example = "0")
            @PathVariable Long regionId) {
        Optional<Region> regionOptional = regionService.getById(regionId);
        return RegionResponseDTO.entityToResponseDTO(regionOptional.orElse(Region.builder().build()));
    }
}
