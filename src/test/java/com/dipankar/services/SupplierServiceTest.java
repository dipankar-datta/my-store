package com.dipankar.services;

import com.dipankar.data.entities.Supplier;
import com.dipankar.data.repositories.SupplierRepository;
import com.dipankar.services.impl.SupplierServiceImpl;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class SupplierServiceTest {

    private final SupplierRepository supplierRepository = Mockito.mock(SupplierRepository.class);

    private final SupplierService supplierService = new SupplierServiceImpl(supplierRepository);

    @Test
    public void list() {
        Mockito.when(supplierRepository.findAll()).thenReturn(Arrays.asList(Supplier.builder().build()));
        List<Supplier> suppliers = supplierService.list();
        assertThat(suppliers.size()).isEqualTo(1);
    }
}
