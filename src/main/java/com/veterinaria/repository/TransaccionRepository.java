package com.veterinaria.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.veterinaria.entity.Carrito;
import com.veterinaria.entity.TransaccionCabecera;

public interface TransaccionRepository extends JpaRepository<TransaccionCabecera, Integer>{
	
}
