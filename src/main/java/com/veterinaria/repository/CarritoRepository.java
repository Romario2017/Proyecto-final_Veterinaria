package com.veterinaria.repository;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.veterinaria.entity.Producto;
import com.veterinaria.entity.Carrito;

public interface CarritoRepository extends JpaRepository<Carrito, Integer>{
	
	@Query("Select m from Carrito m where m.codigo_usuario=:codigousuario and m.estado=1")
	public abstract List<Carrito> listarCarrito(@Param("codigousuario") int codigousuario);
	
	@Transactional
	@Modifying
	@Query("delete from Carrito c where c.codigo_carrito = :codigocarrito and c.codigo_usuario = :codigousuario")
	public void eliminarItem(@Param("codigocarrito") int codigocarrito , @Param("codigousuario") int codigousuario);
	
}
