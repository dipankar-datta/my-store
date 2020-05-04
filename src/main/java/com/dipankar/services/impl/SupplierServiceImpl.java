package com.dipankar.services.impl;

import com.dipankar.data.entities.Supplier;
import com.dipankar.data.repositories.SupplierRepository;
import com.dipankar.services.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SupplierServiceImpl implements SupplierService {

    private SupplierRepository supplierRepository;

    @Autowired
    public SupplierServiceImpl(SupplierRepository supplierRepository) {
        this.supplierRepository = supplierRepository;
    }

    @Override
    public List<Supplier> list() {
        return supplierRepository.findAll();
    }

    @Override
    public Supplier create(Supplier item) {
        return supplierRepository.save(item);
    }

    @Override
    public Supplier update(Supplier item) {
        return supplierRepository.save(item);
    }

    @Override
    public <S extends Supplier> Iterable<S> saveAll(Iterable<S> items) {
        return supplierRepository.saveAll(items);
    }

    @Override
    public Optional<Supplier> getById(Long id) {
        return supplierRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        supplierRepository.deleteById(id);
    }

    @Override
    public void delete(Supplier item) {
        supplierRepository.delete(item);
    }
}
