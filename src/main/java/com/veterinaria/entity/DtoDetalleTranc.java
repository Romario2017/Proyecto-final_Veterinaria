package com.veterinaria.entity;

import java.util.Date;

import com.veterinaria.entity.Carrito;

public class DtoDetalleTranc {
	 
	private Integer transacciondet_cabe_codigo;
	private Integer transacciondet_estado;
	private Date transacciondet_fecha;
	private Integer codigo_carrito;
	
	public Integer getTransacciondet_cabe_codigo() {
		return transacciondet_cabe_codigo;
	}


	public void setTransacciondet_cabe_codigo(Integer transacciondet_cabe_codigo) {
		this.transacciondet_cabe_codigo = transacciondet_cabe_codigo;
	}


	public Integer getTransacciondet_estado() {
		return transacciondet_estado;
	}


	public void setTransacciondet_estado(Integer transacciondet_estado) {
		this.transacciondet_estado = transacciondet_estado;
	}


	public Date getTransacciondet_fecha() {
		return transacciondet_fecha;
	}


	public void setTransacciondet_fecha(Date transacciondet_fecha) {
		this.transacciondet_fecha = transacciondet_fecha;
	}


	public Integer getCodigo_carrito() {
		return codigo_carrito;
	}


	public void setCodigo_carrito(Integer codigo_carrito) {
		this.codigo_carrito = codigo_carrito;
	}
	
	
}
