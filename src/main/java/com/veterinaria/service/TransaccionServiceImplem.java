package com.veterinaria.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.TransaccionCabecera;
import com.veterinaria.entity.TransaccionDetalle;
import com.veterinaria.repository.TransaccionRepository;

@Service
public class TransaccionServiceImplem implements TransaccionService{
	
	@Autowired
	private TransaccionRepository repository;

	@Override
	public TransaccionCabecera insertaTransaccion(TransaccionCabecera objProducto) {
		// TODO Auto-generated method stub
		return repository.save(objProducto);
	}

	
	
	 
}
