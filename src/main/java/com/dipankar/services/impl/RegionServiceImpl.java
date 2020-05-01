package com.dipankar.services.impl;

import com.dipankar.data.entities.Region;
import com.dipankar.data.repositories.RegionRepository;
import com.dipankar.services.RegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RegionServiceImpl implements RegionService {

    @Autowired
    private RegionRepository regionRepository;

    @Override
    public List<Region> list() {
        return regionRepository.findAll();
    }

    @Override
    public Region create(Region item) {
        return regionRepository.save(item);
    }

    @Override
    public Region update(Region item) {
        return regionRepository.save(item);
    }

    @Override
    public <S extends Region> Iterable<S> saveAll(Iterable<S> items) {
        return regionRepository.saveAll(items);
    }

    @Override
    public Optional<Region> getById(Long id) {
        return regionRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        regionRepository.deleteById(id);
    }

    @Override
    public void delete(Region item) {
        regionRepository.delete(item);
    }
}
