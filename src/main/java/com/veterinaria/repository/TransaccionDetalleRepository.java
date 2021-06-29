package com.veterinaria.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.veterinaria.entity.TransaccionCabecera;
import com.veterinaria.entity.TransaccionDetalle;

public interface TransaccionDetalleRepository extends JpaRepository<TransaccionDetalle, Integer> {

	 
}
