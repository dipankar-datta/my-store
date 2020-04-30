package com.dipankar.services.impl;

import com.dipankar.data.entities.Shipper;
import com.dipankar.data.repositories.ShipperRepository;
import com.dipankar.services.ShipperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ShipperServiceImpl implements ShipperService {

    @Autowired
    private ShipperRepository shipperRepository;

    @Override
    public List<Shipper> list() {
        return shipperRepository.findAll();
    }

    @Override
    public Shipper create(Shipper item) {
        return shipperRepository.save(item);
    }

    @Override
    public Shipper update(Shipper item) {
        return shipperRepository.save(item);
    }

    @Override
    public <S extends Shipper> Iterable<S> saveAll(Iterable<S> items) {
        return shipperRepository.saveAll(items);
    }

    @Override
    public Optional<Shipper> getById(Long id) {
        return shipperRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        shipperRepository.deleteById(id);
    }

    @Override
    public void delete(Shipper item) {
        shipperRepository.delete(item);
    }
}
