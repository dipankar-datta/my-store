package com.dipankar.services;

import com.dipankar.data.entities.Category;
import com.dipankar.data.repositories.CategoryRepository;
import com.dipankar.services.impl.CategoryServiceImpl;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@SpringBootTest
public class CategoryServiceTest {

    private final CategoryRepository categoryRepository = Mockito.mock(CategoryRepository.class);

    private final CategoryService categoryService = new CategoryServiceImpl(categoryRepository);

    @Test
    public void list() {
        Mockito.when(categoryRepository.findAll()).thenReturn(Arrays.asList(Category.builder().build()));
        List<Category> categoryList = categoryService.list();
        assertThat(categoryList.size()).isEqualTo(1);
    }

    @Test
    public void getById() {
        Long categoryId = 100L;
        Mockito
                .when(categoryRepository.findById(categoryId))
                .thenReturn(java.util.Optional.ofNullable(Category.builder().build()));
        Optional<Category> categoryOptional = categoryService.getById(categoryId);
        assertThat(categoryOptional.isPresent()).isTrue();
    }
}
