package com.veterinaria.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "tb_historial_clinico")
public class HistorialClinico {
	@Column(name = "codigo_historial_clinico")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer codigo_historial_clinico;
	
	
	@Column(name = "codigo_mascota")
	private Integer codigo_mascota;
	
	
	
	@Column(name = "codigo_especialista")
	private Integer codigo_especialista;
	
	
	@Column(name = "fecha_creacion_historial_clinico", columnDefinition = "DATETIME")
	@Temporal(TemporalType.TIMESTAMP)
	private Date fecha_creacion_historial_clinico;
	
	
	@ManyToOne
	@JoinColumn(name = "codigo_mascota", insertable = false, updatable = false, nullable = false)
	private Mascota mascota;
	
	@ManyToOne
	@JoinColumn(name = "codigo_especialista", insertable = false, updatable = false, nullable = false)
	private Usuario especialista;

	public Integer getCodigo_historial_clinico() {
		return codigo_historial_clinico;
	}

	public void setCodigo_historial_clinico(Integer codigo_historial_clinico) {
		this.codigo_historial_clinico = codigo_historial_clinico;
	}

	public Integer getCodigo_mascota() {
		return codigo_mascota;
	}

	public void setCodigo_mascota(Integer codigo_mascota) {
		this.codigo_mascota = codigo_mascota;
	}

	public Integer getCodigo_especialista() {
		return codigo_especialista;
	}

	public void setCodigo_especialista(Integer codigo_especialista) {
		this.codigo_especialista = codigo_especialista;
	}

	public Mascota getMascota() {
		return mascota;
	}

	public void setMascota(Mascota mascota) {
		this.mascota = mascota;
	}

	public Usuario getEspecialista() {
		return especialista;
	}

	public void setEspecialista(Usuario especialista) {
		this.especialista = especialista;
	}

	public Date getFecha_creacion_historial_clinico() {
		return fecha_creacion_historial_clinico;
	}

	public void setFecha_creacion_historial_clinico(Date fecha_creacion_historial_clinico) {
		this.fecha_creacion_historial_clinico = fecha_creacion_historial_clinico;
	}
	
	
	
	
	
	
}
