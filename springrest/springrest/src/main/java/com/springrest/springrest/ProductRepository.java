package com.springrest.springrest;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {

   /* List<Product> findByCategoryId(Long categoryId);
    
    List<Product> findByPriceLessThanAndCategoryId(double price, Long categoryId);
    
    @Query("SELECT p FROM Product p WHERE p.name LIKE %:name%")
    List<Product> findByNameContaining(String name); */
}
