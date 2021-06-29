package com.veterinaria.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.TransaccionDetalle;
import com.veterinaria.repository.TransaccionDetalleRepository;

@Service
public class TransaccionDetalleServiceImplem  implements TransaccionDetalleService {

	@Autowired
	private TransaccionDetalleRepository repository;

	@Override
	public TransaccionDetalle insertarTransaccionDetalle(TransaccionDetalle obj) {
		// TODO Auto-generated method stub
		return  repository.save(obj);
	}

	 

 

	 
	
	
 

}
