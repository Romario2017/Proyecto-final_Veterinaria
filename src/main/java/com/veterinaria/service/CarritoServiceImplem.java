package com.veterinaria.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Carrito;
import com.veterinaria.entity.Producto;
import com.veterinaria.repository.CarritoRepository;
import com.veterinaria.repository.ProductoRepository;

@Service
public class CarritoServiceImplem implements CarritoService  {

	@Autowired
	private CarritoRepository repository;
	
	@Override
	public List<Carrito> insertarObtenerCarrito(Carrito carrito) {
		repository.save(carrito);
		return repository.listarCarrito(carrito.getCodigo_usuario());
	}
	@Override
	public List<Carrito> listarCarrito(int codigousu) {
		return repository.listarCarrito(codigousu);
	}
	
	@Override
	public void eliminarItem(int codigocarrito, int codigousuario) {
		repository.eliminarItem(codigocarrito,codigousuario);
	}
	
	@Override
	public Optional obtienePorId(Integer codcarrito) {
		// TODO Auto-generated method stub
		return repository.findById(codcarrito);
	}
	@Override
	public Carrito insertaCarrito(Carrito carrito) {
		// TODO Auto-generated method stub
		return repository.save(carrito);
	}
	@Override
	public Carrito cambiarestadoCarrito(Integer codcarrito) {
		Optional<Carrito> x = repository.findById(codcarrito);
		x.get().setEstado(2);
		return  repository.save(x.get());
	}
	
}
