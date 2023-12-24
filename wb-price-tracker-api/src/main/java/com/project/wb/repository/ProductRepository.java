package com.project.wb.repository;

import com.project.wb.entity.Product;
import java.util.Optional;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

    @EntityGraph(attributePaths = "users")
    Optional<Product> findWithUsersByCode(Long code);
}
