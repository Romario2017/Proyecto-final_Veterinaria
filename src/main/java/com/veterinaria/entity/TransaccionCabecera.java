package com.veterinaria.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "tb_cabeceratransaccion")
public class TransaccionCabecera {
	
	@Column(name = "transaccion_codigo")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer transaccion_codigo;

	@Column(name = "transaccion_fecha")
	private Date transaccion_fecha;
	
	@Column(name = "codigo_usuario")
	private Integer codigo_usuario;
	
	
	@Column(name = "estado")
	private Integer estado;
	
	@Column(name = "monto")
	private BigDecimal monto;
	
	
	@Transient
    private List<TransaccionDetalle> detalle;
	
	
	@ManyToOne
	@JoinColumn(name = "codigo_usuario", insertable = false, updatable = false, nullable = false)
	private Usuario usuario;

	public Integer getEstado() {
		return estado;
	}


	public void setEstado(Integer estado) {
		this.estado = estado;
	}

	public BigDecimal getMonto() {
		return monto;
	}

	public void setMonto(BigDecimal monto) {
		this.monto = monto;
	}


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


	public Usuario getUsuario() {
		return usuario;
	}


	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}


	public Integer getCodigo_usuario() {
		return codigo_usuario;
	}


	public void setCodigo_usuario(Integer codigo_usuario) {
		this.codigo_usuario = codigo_usuario;
	}


	public List<TransaccionDetalle> getDetalle() {
		return detalle;
	}


	public void setDetalle(List<TransaccionDetalle> detalle) {
		this.detalle = detalle;
	}


	 
	 

 
	
}
