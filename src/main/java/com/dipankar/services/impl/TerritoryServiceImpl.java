package com.dipankar.services.impl;

import com.dipankar.data.entities.Territory;
import com.dipankar.data.repositories.TerritoryRepository;
import com.dipankar.services.TerritoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TerritoryServiceImpl implements TerritoryService {

    @Autowired
    private TerritoryRepository territoryRepository;

    @Override
    public List<Territory> list() {
        return territoryRepository.findAll();
    }

    @Override
    public Territory create(Territory item) {
        return territoryRepository.save(item);
    }

    @Override
    public Territory update(Territory item) {
        return territoryRepository.save(item);
    }

    @Override
    public <S extends Territory> Iterable<S> saveAll(Iterable<S> items) {
        return territoryRepository.saveAll(items);
    }

    @Override
    public Optional<Territory> getById(Long id) {
        return territoryRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        territoryRepository.deleteById(id);
    }

    @Override
    public void delete(Territory item) {
        territoryRepository.delete(item);
    }
}
