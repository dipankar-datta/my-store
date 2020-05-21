package com.dipankar.services.impl;

import com.dipankar.data.entities.Product;
import com.dipankar.data.repositories.ProductRepository;
import com.dipankar.services.ProductService;
import lombok.AllArgsConstructor;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service @AllArgsConstructor
public class ProductServiceImpl implements ProductService {

    private ProductRepository productRepository;

    @Override @Cacheable(value = "ten-sec-cache")
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
    public Optional<Product> getById(Long id) {
        return productRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        productRepository.deleteById(id);
    }

    @Override
    public void delete(Product item) {
        productRepository.delete(item);
    }
}
