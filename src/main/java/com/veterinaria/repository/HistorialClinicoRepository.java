package com.veterinaria.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.veterinaria.entity.Carrito;
import com.veterinaria.entity.HistorialClinico;

public interface HistorialClinicoRepository  extends JpaRepository<HistorialClinico, Integer>{

}
