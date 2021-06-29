package com.veterinaria.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tb_carrito")
public class Carrito {

	@Column(name = "codigo_carrito")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer codigo_carrito;

	@Column(name = "codigo_producto")
	private Integer codigo_producto;
	
	@Column(name = "codigo_usuario")
	private Integer codigo_usuario;
	
	@Column(name = "estado")
	private Integer estado;
	
	
	@ManyToOne
	@JoinColumn(name = "codigo_producto", insertable = false, updatable = false, nullable = false)
	private Producto producto;


	public Integer getCodigo_carrito() {
		return codigo_carrito;
	}


	public void setCodigo_carrito(Integer codigo_carrito) {
		this.codigo_carrito = codigo_carrito;
	}


	public Integer getCodigo_producto() {
		return codigo_producto;
	}


	public void setCodigo_producto(Integer codigo_producto) {
		this.codigo_producto = codigo_producto;
	}


	public Integer getCodigo_usuario() {
		return codigo_usuario;
	}


	public void setCodigo_usuario(Integer codigo_usuario) {
		this.codigo_usuario = codigo_usuario;
	}


	public Integer getEstado() {
		return estado;
	}


	public void setEstado(Integer estado) {
		this.estado = estado;
	}


	public Producto getProducto() {
		return producto;
	}


	public void setProducto(Producto producto) {
		this.producto = producto;
	}


	

}
