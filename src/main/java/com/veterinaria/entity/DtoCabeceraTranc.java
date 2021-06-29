package com.veterinaria.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Transient;

public class DtoCabeceraTranc {

	private Integer transaccion_codigo;
	private Date transaccion_fecha;
	private Integer codigo_usuario;
	private String transaccion_nombre;
	private Integer transacciondet_cabe_codigo;


	@Transient
	private List<DtoDetalleTranc> detalle;


	public Integer getTransaccion_codigo() {
		return transaccion_codigo;
	}


	public void setTransaccion_codigo(Integer transaccion_codigo) {
		this.transaccion_codigo = transaccion_codigo;
	}


	public Date getTransaccion_fecha() {
		return transaccion_fecha;
	}


	public void setTransaccion_fecha(Date transaccion_fecha) {
		this.transaccion_fecha = transaccion_fecha;
	}


	public Integer getCodigo_usuario() {
		return codigo_usuario;
	}


	public void setCodigo_usuario(Integer codigo_usuario) {
		this.codigo_usuario = codigo_usuario;
	}


	public String getTransaccion_nombre() {
		return transaccion_nombre;
	}


	public void setTransaccion_nombre(String transaccion_nombre) {
		this.transaccion_nombre = transaccion_nombre;
	}


	public Integer getTransacciondet_cabe_codigo() {
		return transacciondet_cabe_codigo;
	}


	public void setTransacciondet_cabe_codigo(Integer transacciondet_cabe_codigo) {
		this.transacciondet_cabe_codigo = transacciondet_cabe_codigo;
	}


	public List<DtoDetalleTranc> getDetalle() {
		return detalle;
	}


	public void setDetalle(List<DtoDetalleTranc> detalle) {
		this.detalle = detalle;
	}
	
	
}
