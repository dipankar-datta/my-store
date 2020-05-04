package com.dipankar.services.impl;

import com.dipankar.data.entities.Category;
import com.dipankar.data.repositories.CategoryRepository;
import com.dipankar.services.CategoryService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service @AllArgsConstructor
public class CategoryServiceImpl implements CategoryService {

    private CategoryRepository categoryRepository;

    @Override
    public List<Category> list() {
        return categoryRepository.findAll();
    }

    @Override
    public Category create(Category item) {
        return categoryRepository.save(item);
    }

    @Override
    public Category update(Category item) {
        return categoryRepository.save(item);
    }

    @Override
    public <S extends Category> Iterable<S> saveAll(Iterable<S> items) {
        return categoryRepository.saveAll(items);
    }

    @Override
    public Optional<Category> getById(Long id) {
        return categoryRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        categoryRepository.deleteById(id);
    }

    @Override
    public void delete(Category item) {
        categoryRepository.delete(item);
    }
}
