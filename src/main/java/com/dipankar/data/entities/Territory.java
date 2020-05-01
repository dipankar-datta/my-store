package com.dipankar.data.entities;

import lombok.Data;

import javax.persistence.*;

@Table(name = "territories") @Entity @Data
public class Territory {

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
