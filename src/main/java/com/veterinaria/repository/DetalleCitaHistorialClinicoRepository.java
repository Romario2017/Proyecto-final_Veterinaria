package com.veterinaria.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.veterinaria.entity.Carrito;
import com.veterinaria.entity.DetalleCitaHistorialClinico;

public interface DetalleCitaHistorialClinicoRepository  extends JpaRepository<DetalleCitaHistorialClinico, Integer> {

}
