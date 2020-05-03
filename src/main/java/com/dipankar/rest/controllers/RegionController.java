package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Region;
import com.dipankar.rest.dtos.response.RegionResponseDTO;
import com.dipankar.services.RegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.Serializable;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("regions")
public class RegionController implements Serializable {

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
            return null;
        }
    }
}
