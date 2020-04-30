package com.dipankar.services.impl;

import com.dipankar.data.entities.Product;
import com.dipankar.data.repositories.ProductRepository;
import com.dipankar.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<Product> list() {
        return productRepository.findAll();
    }

    @Override
    public Product create(Product item) {
        return productRepository.save(item);
    }

    @Override
    public Product update(Product item) {
        return productRepository.save(item);
    }

    @Override
    public <S extends Product> Iterable<S> saveAll(Iterable<S> items) {
        return productRepository.saveAll(items);
    }

    @Override
    public Optional<Product> getById(String id) {
        return productRepository.findById(id);
    }

    @Override
    public void deleteById(String id) {
        productRepository.deleteById(id);
    }

    @Override
    public void delete(Product item) {
        productRepository.delete(item);
    }
}
