package com.project.wb.repository;

import com.project.wb.entity.User;
import java.util.Optional;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findByUsername(String username);

    Boolean existsByUsername(String username);

    @EntityGraph(type = EntityGraph.EntityGraphType.FETCH, attributePaths = "products")
    Optional<User> findWithProductsByUsername(String username);
}
