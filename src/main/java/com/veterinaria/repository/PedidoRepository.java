package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.veterinaria.entity.Pedido;
import com.veterinaria.entity.TransaccionCabecera;
import com.veterinaria.entity.TransaccionDetalle;

public interface PedidoRepository extends JpaRepository<Pedido, Integer> {
	
	@Query("Select p from Pedido p, Usuario u, EstadoPedido ep where p.usuarioCliente.codigo_usuario = u.codigo_usuario and p.estadoPedido.codigo_estado_pedido = ep.codigo_estado_pedido and p.codigo_cliente like :param_cliente")
	public abstract List<Pedido> listaPedidoPorCliente(@Param("param_cliente") Integer codigo_cliente);
	
	
	
	@Query("Select m from TransaccionCabecera m where m.codigo_usuario=:param_cliente")
	public abstract List<TransaccionCabecera> listaTransaccionPorCliente(@Param("param_cliente") Integer codigo_cliente);
	
	@Query("Select m from TransaccionDetalle m where m.transaccion_codigo=:param_idtransa")
	public abstract List<TransaccionDetalle> listaTransaccionDetalle(@Param("param_idtransa") Integer codigotransaccion);
	
	
	
	@Query("Select m from TransaccionCabecera m ")
	public abstract List<TransaccionCabecera> listaTransaccionPorAdministrador(@Param("param_cliente") Integer codigo_cliente);
	
	
	@Query("UPDATE  TransaccionCabecera  m set m.estado=:estado where m.transaccion_codigo=:codigopedido")
	public abstract List<TransaccionCabecera> cambiarEstadoPedido(@Param("codigopedido") Integer codigoPedido,@Param("estado") Integer valor);
	
	
	
	
	
	@Query("Select p from Pedido p, Usuario u, EstadoPedido ep where p.usuarioRepartidor.codigo_usuario = u.codigo_usuario and p.estadoPedido.codigo_estado_pedido = ep.codigo_estado_pedido and p.codigo_repartidor like :param_repartidor")
	public abstract List<Pedido> listaPedidoPorRepartidor(@Param("param_repartidor") Integer codigo_repartidor);
}
