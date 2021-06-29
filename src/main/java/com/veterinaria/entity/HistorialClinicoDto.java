package com.veterinaria.entity;

public class HistorialClinicoDto {
	private Integer codigo_mascota;
	private Integer codigo_especialista;	
	private String motivohistorialclinico;
	private Integer codigo_cita;
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
	public String getMotivohistorialclinico() {
		return motivohistorialclinico;
	}
	public void setMotivohistorialclinico(String motivohistorialclinico) {
		this.motivohistorialclinico = motivohistorialclinico;
	}
	public Integer getCodigo_cita() {
		return codigo_cita;
	}
	public void setCodigo_cita(Integer codigo_cita) {
		this.codigo_cita = codigo_cita;
	}
	
	
	
	
	
}
