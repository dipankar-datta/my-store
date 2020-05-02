package com.dipankar.data.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Table(name = "territories") @Entity @Data
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
