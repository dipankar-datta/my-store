package com.dipankar.data.entities;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;

@Table(name = "territories") @Entity @Data @Builder @NoArgsConstructor @AllArgsConstructor
public class Territory implements Serializable {

    @Id
    @Column(name = "id")
    private Long id;

    @Column(name = "territoryid")
    private String territoryId;

    @Column(name = "territorydescription")
    private String territoryDescription;

    @OneToOne
    @JoinColumn(name = "regionid")
    private Region region;
}
