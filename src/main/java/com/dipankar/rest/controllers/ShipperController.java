package com.dipankar.rest.controllers;

import com.dipankar.data.entities.Shipper;
import com.dipankar.services.ShipperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("shippers")
public class ShipperController {

    @Autowired
    private ShipperService shipperService;

    @GetMapping
    public List<Shipper> shipperList() {
        return shipperService.list();
    }
}
