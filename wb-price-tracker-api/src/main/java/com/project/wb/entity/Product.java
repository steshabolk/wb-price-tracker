package com.project.wb.entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Setter
@Getter
@Entity
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "code")
    private Long code;

    @Column(name = "brand")
    private String brand;

    @Column(name = "name")
    private String name;

    @Builder.Default
    @ManyToMany(mappedBy = "products")
    private Set<User> users = new HashSet<>();

    @Builder.Default
    @OneToMany(mappedBy = "product", cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    private List<Price> prices = new ArrayList<>();

    public void addPrice(Price price) {
        this.prices.add(price);
        price.setProduct(this);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Product product)) {
            return false;
        }
        return id != null && Objects.equals(id, product.getId());
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}
