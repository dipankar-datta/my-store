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

//@SpringBootTest
public class CategoryServiceTest {

    private final CategoryRepository categoryRepository = Mockito.mock(CategoryRepository.class);

    private final CategoryService categoryService = new CategoryServiceImpl(categoryRepository);

    @Test
    public void list() {
        Mockito.when(categoryRepository.findAll()).thenReturn(Arrays.asList(Category.builder().build()));
        List<Category> categoryList = categoryService.list();
        assertThat(categoryList.size()).isEqualTo(1);
    }
}
