package com.piper.valley.models.repository;

import com.piper.valley.models.domain.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface FormulairesRepository extends JpaRepository<Product, Long> {
	Optional<Product> findByName(String name);
	Optional<Product>   findByAveragePriceBetween(Float start, Float End);
	List<Product> findAll();
}