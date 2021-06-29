package com.veterinaria.service;

import com.veterinaria.entity.TransaccionCabecera;
import com.veterinaria.entity.TransaccionDetalle;

public interface TransaccionService {

	public abstract TransaccionCabecera insertaTransaccion(TransaccionCabecera obj);
	
}
