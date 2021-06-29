package com.veterinaria.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Carrito;
import com.veterinaria.entity.Cita;
import com.veterinaria.entity.DetalleCitaHistorialClinico;
import com.veterinaria.entity.HistorialClinico;
import com.veterinaria.entity.HistorialClinicoDto;
import com.veterinaria.repository.CarritoRepository;
import com.veterinaria.repository.CitaRepository;
import com.veterinaria.repository.DetalleCitaHistorialClinicoRepository;
import com.veterinaria.repository.HistorialClinicoRepository;

@Service
public class CitaServiceImplem implements CitaService {
	
	@Autowired
	private CitaRepository repository;
	
	@Autowired
	private DetalleCitaHistorialClinicoRepository detalleCitaHistorialClinicorepository;

	@Autowired
	private HistorialClinicoRepository historialClinicorepository;
	
	
	@Override
	public List<Cita> listaCita() {
		return repository.listaCita();
	}
//	@Override
//	public List<Cita> obtenerFechaCitaPedido(Integer codigo_usuario) {
//		return repository.obtenerFechaCitaPedido(codigo_usuario);
//	}
	@Override
	public List<Cita> obtenerFechaProximaCita(Integer codigo_usuario) {
		return repository.obtenerFechaProximaCita(codigo_usuario);
	}
	
	@Override
	public List<Cita> listaCitaPorCodigo(Integer codigo_cita) {
		return repository.listaCitaPorCodigo(codigo_cita);
	}

	@Override
	public Cita insertaCita(Cita objCita) {
		return repository.save(objCita);
	}

	@Override
	public List<Cita> listaCitaPorUsuario(Integer codigo_usuario) {
		return repository.listaCitaPorUsuario(codigo_usuario);
	}
	
	@Override
	public List<Cita> listaCitaPorEspecialista(Integer codigo_usuario) {
		return repository.listaCitaPorEspecialista(codigo_usuario);
	}
	
	
	
	@Override
	public List<Cita> obtenercita(Integer codigocita) {
		return repository.obtenercita(codigocita);
	}
	
	@Override
	public List<DetalleCitaHistorialClinico> obtenerhistorialclinico(Integer codigocita) {
		return repository.obtenerhistorialclinico(codigocita);
	}
	
	
	@Override
	public HistorialClinicoDto insertarHistorialClinico(HistorialClinicoDto historialClinicoTemp) {
		HistorialClinico histTemp=new HistorialClinico();
		histTemp.setCodigo_especialista(historialClinicoTemp.getCodigo_especialista());
		histTemp.setCodigo_mascota(historialClinicoTemp.getCodigo_mascota());
		histTemp.setFecha_creacion_historial_clinico(new Date());
		
		histTemp=historialClinicorepository.save(histTemp);
		DetalleCitaHistorialClinico datailhistTemp=new DetalleCitaHistorialClinico();
		datailhistTemp.setFecha_detalle_cita_historial_clinico(new Date());
		datailhistTemp.setCodigo_historial_clinico(histTemp.getCodigo_historial_clinico());
		datailhistTemp.setCodigo_cita(historialClinicoTemp.getCodigo_cita());
		datailhistTemp.setMotivo_detalle_cita_historial_clinico(historialClinicoTemp.getMotivohistorialclinico());
		detalleCitaHistorialClinicorepository.save(datailhistTemp);
		Optional<Cita> actual=repository.findById(historialClinicoTemp.getCodigo_cita());
		actual.get().setCodigo_estado_cita(3);
		repository.save(actual.get());
		
		return historialClinicoTemp;
	}
	
	@Override
	public Optional<Cita> obtienePorId(Integer codigo_cita) {
		return repository.findById(codigo_cita);
	}
	
	
	@Override
	public Date obtenerProximaCita(Integer codigo_usuario) {
		// TODO Auto-generated method stub
		return repository.obtenerProximaCita(codigo_usuario);
	}
	@Override
	public Date obtenerUltimoPedido(Integer codigo_usuario) {
		// TODO Auto-generated method stub
		return repository.obtenerUltimoPedido(codigo_usuario);
	}

}
