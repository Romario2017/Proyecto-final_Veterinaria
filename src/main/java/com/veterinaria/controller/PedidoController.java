package com.veterinaria.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Pedido;
import com.veterinaria.entity.TransaccionCabecera;
import com.veterinaria.entity.TransaccionDetalle;
import com.veterinaria.service.PedidoService;

@Controller
public class PedidoController {
	
	@Autowired
	private PedidoService service;
	
	@RequestMapping("/listaPedido")
	@ResponseBody
	public List<Pedido> listaPedido() {
		return service.listaPedido();
	}
	
	@RequestMapping("/listaPedidoPorCliente")
	@ResponseBody
	public List<Pedido> listaPedidoPorCliente(Integer codigo_cliente) {
		return service.listaPedidoPorCliente(codigo_cliente);
	}
	
	@RequestMapping("/listaTransaccionPorCliente")
	@ResponseBody
	public List<TransaccionCabecera> listaTransaccionPorCliente(Integer codigo_cliente) {
		return service.listaTransaccionPorCliente(codigo_cliente);
	}
	
	
	@RequestMapping("/listaTransaccionDetalle")
	@ResponseBody
	public List<TransaccionDetalle> listaTransaccionDetalle(Integer codigoTrasaccion) {
		return service.listaTransaccionDetalle(codigoTrasaccion);
	}
	
	
	
	@RequestMapping("/cambiarEstadoPedido")
	@ResponseBody
	public List<TransaccionCabecera> cambiarEstadoPedido(Integer codigoPedido,Integer valor) {
		return service.cambiarEstadoPedido(codigoPedido,valor);
	}
	
	
	
	@RequestMapping("/listaTransaccionPorAdministrador")
	@ResponseBody
	public List<TransaccionCabecera> listaTransaccionPorAdministrador(Integer codigo_cliente) {
		return service.listaTransaccionPorAdministrador(codigo_cliente);
	}
	
	
	@RequestMapping("/listaPedidoPorRepartidor")
	@ResponseBody
	public List<Pedido> listaPedidoPorRepartidor(Integer codigo_repartidor) {
		return service.listaPedidoPorRepartidor(codigo_repartidor);
	}
	
	@RequestMapping("/actualizaEstadoPedido")
	@ResponseBody
	public Map<String, Object> actualizaEstadoPedido(Integer codigo_pedido, Integer codigo_estado_pedido) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		Optional<Pedido> option = service.obtienePorId(codigo_pedido);
		
		try {
			if(option.isPresent()) {
				option.ifPresent((Pedido result) -> {
					result.setCodigo_estado_pedido(codigo_estado_pedido);
					
					Pedido pedidoSalida = service.insertaPedido(result);
					
					if(pedidoSalida != null) {
						salida.put("MENSAJE", "El estado del pedido ha sido modificado");
					}
				});
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error, la cita no pudo ser actualizada");
		} finally {
			List<Pedido> lista = service.listaPedido();
			salida.put("lista", lista);
		}
		
		return salida;
	}
}
