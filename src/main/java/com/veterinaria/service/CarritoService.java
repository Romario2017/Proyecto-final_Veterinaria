package com.veterinaria.service;

import java.util.List;
import java.util.Optional;

import com.veterinaria.entity.Carrito;
import com.veterinaria.entity.Producto;

public interface CarritoService {
	public abstract List<Carrito> insertarObtenerCarrito(Carrito carrito);
	public abstract List<Carrito> listarCarrito(int codigousuario);
	public void eliminarItem(int codigocarrito, int codigousuario);
	public abstract Optional obtienePorId(Integer codcarrito);
	public abstract Carrito insertaCarrito(Carrito objProducto);
	public abstract Carrito cambiarestadoCarrito(Integer codcarrito);
	
}
