package com.dipankar.services;

import com.dipankar.data.entities.Product;
import com.dipankar.data.repositories.ProductRepository;
import com.dipankar.services.impl.ProductServiceImpl;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.Arrays;
import java.util.List;

@SpringBootTest
public class ProductServiceTest {

    private final ProductRepository productRepository = Mockito.mock(ProductRepository.class);

    private final ProductService productService = new ProductServiceImpl(productRepository);

    @Test
    public void list() {
        Mockito.when(productRepository.findAll()).thenReturn(Arrays.asList(Product.builder().build()));
        List<Product> productList = productService.list();
        assertThat(productList.size()).isEqualTo(1);
    }
}
