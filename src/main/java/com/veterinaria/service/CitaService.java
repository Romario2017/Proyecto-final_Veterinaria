package com.veterinaria.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import com.veterinaria.entity.Cita;
import com.veterinaria.entity.DetalleCitaHistorialClinico;
import com.veterinaria.entity.HistorialClinicoDto;

public interface CitaService {
	public abstract List<Cita> listaCita();
//	public abstract List<Cita> obtenerFechaCitaPedido(Integer codigo_usuario);
	public abstract List<Cita> obtenerFechaProximaCita(Integer codigo_usuario);
	
	
	public abstract List<Cita> listaCitaPorCodigo(Integer codigo_cita);
	public abstract Cita insertaCita(Cita objCita);
	public abstract List<Cita> listaCitaPorUsuario(Integer codigo_usuario);
	public abstract List<Cita> listaCitaPorEspecialista(Integer codigo_usuario);
	public abstract List<Cita> obtenercita(Integer codigocita);
	public abstract List<DetalleCitaHistorialClinico> obtenerhistorialclinico(Integer codigocita);
	public abstract HistorialClinicoDto insertarHistorialClinico(HistorialClinicoDto historialTemp);
	
	
	
	public abstract Optional<Cita> obtienePorId(Integer codigo_cita);
	
	
	public abstract Date obtenerProximaCita(Integer codigo_usuario);
	public abstract Date obtenerUltimoPedido(Integer codigo_usuario);
}
