package com.dipankar.services;

import com.dipankar.data.entities.Region;
import com.dipankar.data.repositories.RegionRepository;
import com.dipankar.services.impl.RegionServiceImpl;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class RegionServiceTest {

    private final RegionRepository regionRepository = Mockito.mock(RegionRepository.class);

    private final RegionService regionService = new RegionServiceImpl(regionRepository);

    @Test
    public void list() {
        Mockito.when(regionRepository.findAll()).thenReturn(Arrays.asList(Region.builder().build()));
        List<Region> regionList = regionService.list();
        assertThat(regionList.size()).isEqualTo(1);
    }

    @Test
    public void getById() {
        Long id = 100L;
        Mockito
                .when(regionRepository.findById(id))
                .thenReturn(java.util.Optional.ofNullable(Region.builder().build()));
        Optional<Region> categoryOptional = regionService.getById(id);
        assertThat(categoryOptional.isPresent()).isTrue();
    }
}
