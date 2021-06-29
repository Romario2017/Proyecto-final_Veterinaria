package com.veterinaria.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Pedido;
import com.veterinaria.entity.TransaccionCabecera;
import com.veterinaria.entity.TransaccionDetalle;
import com.veterinaria.repository.PedidoRepository;
import com.veterinaria.repository.TransaccionRepository;

@Service
public class PedidoServiceImplem implements PedidoService {
	
	@Autowired
	private PedidoRepository repository;
	
	
	@Autowired
	private TransaccionRepository repositoryTrasaccion;
	
	@Override
	public List<Pedido> listaPedido() {
		return repository.findAll();
	}

	@Override
	public List<Pedido> listaPedidoPorCliente(Integer codigo_cliente) {
		return repository.listaPedidoPorCliente(codigo_cliente);
	}
	
	
	@Override
	public List<TransaccionCabecera> listaTransaccionPorCliente(Integer codigo_cliente) {
		return repository.listaTransaccionPorCliente(codigo_cliente);
	}
	@Override
	public List<TransaccionDetalle> listaTransaccionDetalle(Integer codigotransaccion) {
		return repository.listaTransaccionDetalle(codigotransaccion);
	}
	
	
	

	@Override
	public List<TransaccionCabecera> listaTransaccionPorAdministrador(Integer codigo_cliente) {
		return repository.listaTransaccionPorAdministrador(codigo_cliente);
	}
	
	@Override
	public List<TransaccionCabecera> cambiarEstadoPedido(Integer codigoPedido,Integer valor) {
		Optional<TransaccionCabecera> x=	repositoryTrasaccion.findById(codigoPedido);
        x.get().setEstado(valor);
        repositoryTrasaccion.save(x.get());
		return null;
	}
	
	
	
	@Override
	public Optional<Pedido> obtienePorId(Integer codigo_pedido) {
		return repository.findById(codigo_pedido);
	}

	@Override
	public Pedido insertaPedido(Pedido objPedido) {
		return repository.save(objPedido);
	}

	@Override
	public List<Pedido> listaPedidoPorRepartidor(Integer codigo_repartidor) {
		return repository.listaPedidoPorRepartidor(codigo_repartidor);
	}
	
	
}
