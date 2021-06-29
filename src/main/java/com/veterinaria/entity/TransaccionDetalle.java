package com.veterinaria.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tb_detalletransaccion")
public class TransaccionDetalle {
	
	@Column(name = "detalletransaccion_codigo")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer detalletransaccion_codigo;

	@Column(name = "monto")
	private BigDecimal monto;
	
	@Column(name = "transaccion_codigo")
	private Integer transaccion_codigo;
	
	
	@Column(name = "codigo_carrito")
	private Integer codigo_carrito;
	
	
	@ManyToOne
	@JoinColumn(name = "transaccion_codigo", insertable = false, updatable = false, nullable = false)
	private TransaccionCabecera transaccioncabecera;

	@ManyToOne
	@JoinColumn(name = "codigo_carrito", insertable = false, updatable = false, nullable = false)
	private Carrito carrito;

	
	public Integer getDetalletransaccion_codigo() {
		return detalletransaccion_codigo;
	}

	public void setDetalletransaccion_codigo(Integer detalletransaccion_codigo) {
		this.detalletransaccion_codigo = detalletransaccion_codigo;
	}	
	
	public Integer getCodigo_carrito() {
		return codigo_carrito;
	}

	public void setCodigo_carrito(Integer codigo_carrito) {
		this.codigo_carrito = codigo_carrito;
	}

	public BigDecimal getMonto() {
		return monto;
	}

	public void setMonto(BigDecimal monto) {
		this.monto = monto;
	}

	public TransaccionCabecera getTransaccioncabecera() {
		return transaccioncabecera;
	}

	public void setTransaccioncabecera(TransaccionCabecera transaccioncabecera) {
		this.transaccioncabecera = transaccioncabecera;
	}

	public Carrito getCarrito() {
		return carrito;
	}

	public void setCarrito(Carrito carrito) {
		this.carrito = carrito;
	}

	public Integer getTransaccion_codigo() {
		return transaccion_codigo;
	}

	public void setTransaccion_codigo(Integer transaccion_codigo) {
		this.transaccion_codigo = transaccion_codigo;
	}
	 
	
}
