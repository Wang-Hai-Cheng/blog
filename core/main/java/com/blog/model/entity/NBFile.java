package com.blog.model.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;

import static java.time.LocalDateTime.now;

/**
 * created by wang-hai-cheng on 2018/7/15 at 11:55
 * @author wang-hai-cheng
 */
@Data
@Entity
@Table(name = "nb_file")
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class NBFile implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, updatable = false, length = 11)
    public Long id;

    @Column(nullable = false)
    private String name;

    @Column(length = 500)
    private String url;

    @Builder.Default
    private LocalDateTime post = now();
}