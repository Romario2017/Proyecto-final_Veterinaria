package com.veterinaria.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.veterinaria.entity.Cita;
import com.veterinaria.entity.DetalleCitaHistorialClinico;

public interface CitaRepository extends JpaRepository<Cita, Integer>{
	
	@Query("Select c from Cita c, Servicio s, Usuario u, Mascota m, EstadoCita ec where c.servicio.codigo_servicio = s.codigo_servicio and c.usuario.codigo_usuario = u.codigo_usuario and c.mascota.codigo_mascota = m.codigo_mascota and c.estado.codigo_estado_cita = ec.codigo_estado_cita and c.codigo_cita like :param_cita")
	public abstract List<Cita> listaCitaPorCodigo(@Param("param_cita") Integer codigo_cita);
	
	@Query("Select c from Cita c, Servicio s, Usuario u, Mascota m, EstadoCita ec where c.servicio.codigo_servicio = s.codigo_servicio and c.usuario.codigo_usuario = u.codigo_usuario and c.mascota.codigo_mascota = m.codigo_mascota and c.estado.codigo_estado_cita = ec.codigo_estado_cita")
	public abstract List<Cita> listaCita();
	
	//@Query("Select c from Cita c, Servicio s, Usuario u, Mascota m, EstadoCita ec where c.servicio.codigo_servicio = s.codigo_servicio and c.usuario.codigo_usuario = u.codigo_usuario and c.mascota.codigo_mascota = m.codigo_mascota and c.estado.codigo_estado_cita = ec.codigo_estado_cita and c.codigo_propietario like :param_usuario and  c.fecha_solicitud_cita=(Select  MAX(cii.fecha_solicitud_cita) from Cita cii where cii.codigo_propietario like :param_usuario)")
	//public abstract List<Cita> obtenerFechaCitaPedido(@Param("param_usuario") Integer codigo_usuario);
	
	
	@Query("Select c from Cita c, Servicio s, Usuario u, Mascota m, EstadoCita ec where c.servicio.codigo_servicio = s.codigo_servicio and c.usuario.codigo_usuario = u.codigo_usuario and c.mascota.codigo_mascota = m.codigo_mascota and c.estado.codigo_estado_cita = ec.codigo_estado_cita and c.codigo_propietario like :param_usuario and  c.fecha_solicitud_cita=(Select  MAX(cii.fecha_solicitud_cita) from Cita cii where cii.codigo_propietario like :param_usuario)")
	public abstract List<Cita> obtenerFechaProximaCita(@Param("param_usuario") Integer codigo_usuario);
	
	@Query("Select c from Cita c, Servicio s, Usuario u, Mascota m, EstadoCita ec where c.servicio.codigo_servicio = s.codigo_servicio and c.usuario.codigo_usuario = u.codigo_usuario and c.mascota.codigo_mascota = m.codigo_mascota and c.estado.codigo_estado_cita = ec.codigo_estado_cita and c.codigo_propietario like :param_usuario")
	public abstract List<Cita> listaCitaPorUsuario(@Param("param_usuario") Integer codigo_usuario);
	
	@Query("Select c from Cita c, Servicio s, Usuario u, Mascota m, EstadoCita ec where c.servicio.codigo_servicio = s.codigo_servicio "
			+ "and c.usuario.codigo_usuario = u.codigo_usuario "
			+ "and c.mascota.codigo_mascota = m.codigo_mascota "
			+ "and c.estado.codigo_estado_cita = ec.codigo_estado_cita and s.codigo_especialista like :param_usuario")
	public abstract List<Cita> listaCitaPorEspecialista(@Param("param_usuario") Integer codigo_usuario);
	
	@Query("Select c from Cita c, Servicio s, Usuario u, Mascota m, EstadoCita ec where c.servicio.codigo_servicio = s.codigo_servicio "
			+ "and c.usuario.codigo_usuario = u.codigo_usuario "
			+ "and c.mascota.codigo_mascota = m.codigo_mascota "
			+ "and c.estado.codigo_estado_cita = ec.codigo_estado_cita and c.codigo_cita = :param_cita")
	public abstract List<Cita> obtenercita(@Param("param_cita") Integer codigocita);
	
	
	@Query("Select c from DetalleCitaHistorialClinico c where c.codigo_cita = :param_cita")
	public abstract List<DetalleCitaHistorialClinico> obtenerhistorialclinico(@Param("param_cita") Integer codigocita);
	

	@Query(value =  "select \r\n"
			+ "CAST( CONCAT(DATE(tc.FECHA_PROGRAMADA_CITA),' ',TIME(ts.INICIO_TURNO_SERVICIO)) as DATETIME)\r\n"
			+ "from tb_cita tc \r\n"
			+ "left join  tb_servicio ts on ts.CODIGO_SERVICIO  = tc.CODIGO_SERVICIO \r\n"
			+ "where tc.CODIGO_PROPIETARIO  = :param_usuario\r\n"
			+ "and (select CAST(CONCAT(DATE(tc.FECHA_PROGRAMADA_CITA),' ',TIME(ts.INICIO_TURNO_SERVICIO)) as DATETIME)) >=  NOW()\r\n"
			+ "order by (select CAST(CONCAT(DATE(tc.FECHA_PROGRAMADA_CITA),' ',TIME(ts.INICIO_TURNO_SERVICIO)) as DATETIME)) asc\r\n"
			+ "LIMIT 1",
			nativeQuery = true)
	public abstract Date obtenerProximaCita(@Param("param_usuario") Integer codigo_usuario);
	
	@Query(value ="select \r\n"
			+ "CAST( CONCAT(DATE(tc.FECHA_PROGRAMADA_CITA),' ',TIME(ts.INICIO_TURNO_SERVICIO)) as DATETIME)\r\n"
			+ "from tb_cita tc \r\n"
			+ "left join  tb_servicio ts on ts.CODIGO_SERVICIO  = tc.CODIGO_SERVICIO \r\n"
			+ "where tc.CODIGO_PROPIETARIO  = :param_usuario\r\n"
			+ "and (select CAST(CONCAT(DATE(tc.FECHA_PROGRAMADA_CITA),' ',TIME(ts.INICIO_TURNO_SERVICIO)) as DATETIME)) <=  NOW()\r\n"
			+ "order by (select CAST(CONCAT(DATE(tc.FECHA_PROGRAMADA_CITA),' ',TIME(ts.INICIO_TURNO_SERVICIO)) as DATETIME)) desc\r\n"
			+ "LIMIT 1",
			nativeQuery = true)
	public abstract Date obtenerUltimoPedido(@Param("param_usuario") Integer codigo_usuario);
	
}
