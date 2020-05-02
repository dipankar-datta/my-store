package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Region;
import com.dipankar.services.RegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.Serializable;
import java.util.List;

@RestController
@RequestMapping("regions")
public class RegionController implements Serializable {

    @Autowired
    private RegionService regionService;

    @GetMapping
    public List<Region> regionList() {
        return regionService.list();
    }
}
