package com.dipankar.services;

import com.dipankar.data.entities.Shipper;
import com.dipankar.data.repositories.ShipperRepository;
import com.dipankar.services.impl.ShipperServiceImpl;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class ShipperServiceTest {

    private ShipperRepository shipperRepository = Mockito.mock(ShipperRepository.class);

    private ShipperService shipperService = new ShipperServiceImpl(shipperRepository);

    @Test
    public void list() {
        Mockito.when(shipperRepository.findAll()).thenReturn(Arrays.asList(Shipper.builder().build()));
        List<Shipper> shippers = shipperService.list();
        assertThat(shippers.size()).isEqualTo(1);
    }

    @Test
    public void getById() {
        Long id = 100L;
        Mockito
                .when(shipperRepository.findById(id))
                .thenReturn(java.util.Optional.ofNullable(Shipper.builder().build()));
        Optional<Shipper> categoryOptional = shipperService.getById(id);
        assertThat(categoryOptional.isPresent()).isTrue();
    }
}
