package com.project.wb.repository;

import com.project.wb.entity.Product;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

    @EntityGraph(type = EntityGraph.EntityGraphType.FETCH, attributePaths = "users")
    Optional<Product> findWithUsersByCode(Long code);

    @EntityGraph(type = EntityGraph.EntityGraphType.FETCH, attributePaths = "prices")
    Optional<Product> findWithPricesByCode(Long code);

    @Query(nativeQuery = true, value = "SELECT id FROM products WHERE id NOT IN " +
            "(SELECT DISTINCT product_id FROM users_products)")
    List<Long> findNonTrackedProductIds();

    @Modifying
    @Query("DELETE FROM Product p WHERE p.id IN :productIds")
    void removeProductsByIds(@Param("productIds") List<Long> productIds);
}
