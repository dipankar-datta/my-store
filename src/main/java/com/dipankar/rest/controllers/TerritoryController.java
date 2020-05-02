package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Territory;
import com.dipankar.services.TerritoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.Serializable;
import java.util.List;

@RestController
@RequestMapping("territories")
public class TerritoryController implements Serializable {

    @Autowired
    private TerritoryService territoryService;

    @GetMapping
    public List<Territory> territoryList() {
        return territoryService.list();
    }
}
