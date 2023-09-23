package org.africalib.gallery.backend.entity;

import lombok.Getter;

import javax.persistence.*;

@Getter
@Entity
@Table(name = "boards")
public class Board {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column
    private String email;

    @Column
    private String password;

    @Column
    private String good;

}
