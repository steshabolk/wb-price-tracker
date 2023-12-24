package com.project.wb.entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Setter
@Getter
@Entity
@Table(name = "products")
public class Product extends BaseEntity {

    @NotNull
    @Min(value = 2_000_000L, message = "{api.validation.invalidCode.message}")
    @Column(name = "code")
    private Long code;

    @NotNull
    @Size(min = 2, max = 64)
    @Column(name = "brand")
    private String brand;

    @NotNull
    @Size(min = 2, max = 64)
    @Column(name = "name")
    private String name;

    @ManyToMany(mappedBy = "products")
    private Set<User> users = new HashSet<>();

    @OneToMany(mappedBy = "product", cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    private List<Price> prices = new ArrayList<>();
}
