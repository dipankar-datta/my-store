package com.dipankar.services.impl;

import com.dipankar.data.entities.Territory;
import com.dipankar.data.repositories.TerritoryRepository;
import com.dipankar.services.TerritoryService;
import lombok.AllArgsConstructor;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service @AllArgsConstructor
public class TerritoryServiceImpl implements TerritoryService {

    private TerritoryRepository territoryRepository;

    @Override  @Cacheable(value = "twenty-sec-cache")
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
