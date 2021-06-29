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
@Table(name = "tb_detalle_cita_historial_clinico")
public class DetalleCitaHistorialClinico {
	
	@Column(name = "codigo_cita")
	@Id
	private Integer codigo_cita;

	@Column(name = "codigo_historial_clinico")
	
	private Integer codigo_historial_clinico;

	@Column(name = "fecha_detalle_cita_historial_clinico", columnDefinition = "DATETIME")
	@Temporal(TemporalType.TIMESTAMP)
	private Date fecha_detalle_cita_historial_clinico;

	@Column(name = "motivo_detalle_cita_historial_clinico")
	private String motivo_detalle_cita_historial_clinico;

	@ManyToOne
	@JoinColumn(name = "codigo_cita", insertable = false, updatable = false, nullable = false)
	private Cita cita;

	@ManyToOne
	@JoinColumn(name = "codigo_historial_clinico", insertable = false, updatable = false, nullable = false)
	private HistorialClinico historiaclinico;

	public Integer getCodigo_cita() {
		return codigo_cita;
	}

	public void setCodigo_cita(Integer codigo_cita) {
		this.codigo_cita = codigo_cita;
	}

	public Integer getCodigo_historial_clinico() {
		return codigo_historial_clinico;
	}

	public void setCodigo_historial_clinico(Integer codigo_historial_clinico) {
		this.codigo_historial_clinico = codigo_historial_clinico;
	}

	public Date getFecha_detalle_cita_historial_clinico() {
		return fecha_detalle_cita_historial_clinico;
	}

	public void setFecha_detalle_cita_historial_clinico(Date fecha_detalle_cita_historial_clinico) {
		this.fecha_detalle_cita_historial_clinico = fecha_detalle_cita_historial_clinico;
	}

	public String getMotivo_detalle_cita_historial_clinico() {
		return motivo_detalle_cita_historial_clinico;
	}

	public void setMotivo_detalle_cita_historial_clinico(String motivo_detalle_cita_historial_clinico) {
		this.motivo_detalle_cita_historial_clinico = motivo_detalle_cita_historial_clinico;
	}

	public Cita getCita() {
		return cita;
	}

	public void setCita(Cita cita) {
		this.cita = cita;
	}

	public HistorialClinico getHistoriaclinico() {
		return historiaclinico;
	}

	public void setHistoriaclinico(HistorialClinico historiaclinico) {
		this.historiaclinico = historiaclinico;
	}

}
