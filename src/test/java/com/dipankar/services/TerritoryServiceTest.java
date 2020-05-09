package com.dipankar.services;

import com.dipankar.data.entities.Territory;
import com.dipankar.data.repositories.TerritoryRepository;
import com.dipankar.services.impl.TerritoryServiceImpl;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class TerritoryServiceTest {

    private TerritoryRepository territoryRepository = Mockito.mock(TerritoryRepository.class);

    private TerritoryService territoryService = new TerritoryServiceImpl(territoryRepository);

    @Test
    public void list() {
        Mockito.when(territoryRepository.findAll()).thenReturn(Arrays.asList(Territory.builder().build()));
        List<Territory> territories = territoryService.list();
        assertThat(territories.size()).isEqualTo(1);
    }

    @Test
    public void getById() {
        Long id = 100L;
        Mockito
                .when(territoryRepository.findById(id))
                .thenReturn(java.util.Optional.ofNullable(Territory.builder().build()));
        Optional<Territory> categoryOptional = territoryService.getById(id);
        assertThat(categoryOptional.isPresent()).isTrue();
    }
}
