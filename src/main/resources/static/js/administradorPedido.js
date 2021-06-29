
$(document).ready(function() {
	listarPedidosDatatable(codigoPropietario)
});

   function agregarGrillaPedido(lista) {
		let html=""
		
	        $.each(lista, function (index, item) {
		let estadohtml=""
		let seletec1=""
		let seletec2=""
		let seletec3=""
		let seletec4=""
		if(item.estado==1){
			estadohtml=`<span class="badge badge-info">Generado</span>`
			seletec1="selected"
		}
		else if(item.estado==2){
			estadohtml=`<span class="badge badge-primary">Enviado</span>`
			seletec2="selected"
		}
		else if(item.estado==3){
			estadohtml=`<span class="badge badge-success">Entregado</span>`
			seletec3="selected"
		}
		else if(item.estado==4){
			estadohtml=`<span class="badge badge-secondary">Cancelado</span>`
			seletec4="selected"
		}
		
	        	 html+= ` <tr>
					<td>${index}</td>
					<td>${item.transaccion_codigo}</td>
					<td>${item.usuario.apellido_usuario} ${item.usuario.nombre_usuario}</td>
					<td>${item.usuario.dni_usuario}</td>
					<td>${item.monto}</td>
					<td>${item.transaccion_fecha}</td>
					<td>${estadohtml}</td>
					<td>
					 <a data-toggle="modal" data-target="#edit-review" >
					<i class="fa fa-eye" style="color:green" onclick="obtenerDetalle(${item.transaccion_codigo})"></i></a>
					<select class="comboEstado"  data-idpedido="${item.transaccion_codigo}" name="select">
  <option value="1" ${seletec1}>Generado</option>
  <option value="2"  ${seletec2}>Enviado</option>
  <option value="3" ${seletec3}>Entregado</option>
  <option value="4" ${seletec4}>Cancelado</option>
</select></td>
                </tr>`
	        })
	    	
	    	$('#lstTransaccion').html(html)


$( ".comboEstado" ).change(function() {

let combo =$(this).val()
let data =$(this).data("idpedido")


$.getJSON("cambiarEstadoPedido", {"valor": combo,"codigoPedido": data}, function(data) {
	         mostrarMensajeExitoso("Actualizacion exitosa!")
	        }).always(function() {
			debugger
    listarPedidosDatatable(codigoPropietario)
  });


});

		}
	    
function obtenerDetalle(idTransaccion){
	
	     $.getJSON("listaTransaccionDetalle", {"codigoTrasaccion": idTransaccion}, function(lista) {
	            agregarDetallePedido(lista);
	        });
}
function agregarDetallePedido(lista){
		let html=""
		
	        $.each(lista, function (index, item) {
	
			html += `
	<tr role="row" class="odd">
		<td class="sorting_1">${index}</td>
		<td class=" text-center mx-auto float-center">
			<img src="data:image/png;base64,${item.carrito.producto.foto1_producto}" class="imgbig" alt="Pet image" style="width: 200px;height: 200px;"></td>
		<td>${item.carrito.producto.nombre_producto}</td>
		<td>${item.carrito.producto.descripcion_simple_producto}</td>
		<td>${item.carrito.producto.precio_producto}</td>
		
	</tr>`

			
	})

$('#tableConsolidado').html(html);
}

		function listarPedidosDatatable(usuario) {
	        $.getJSON("listaTransaccionPorAdministrador", {"codigo_cliente": usuario}, function(lista) {
	            agregarGrillaPedido(lista);
	        });
	    }


		
		function cancelarPedido(codigo_pedido) {
		    const codigo_estado_pedido = 5;
		    mostrarMensajeConfirmacion("¿Desea cancelar la cita?", accionCancelarPedido, null, {codigo_pedido, codigo_estado_pedido});
		}
		
		function accionCancelarPedido(data) {
		    $('#id_elimina').val(data.codigo_pedido);
		    $('#id_estado_elimina').val(data.codigo_estado_pedido);
		    
		    if(data.codigo_pedido.length > 0) {
			    $.ajax({
					type: 'POST',
					data: $('#id_form_elimina').serialize(),
					url: 'actualizaEstadoPedido',
					success: function(data) {
					    listarPedidosDatatable(codigoPropietario);
						mostrarMensaje(data.MENSAJE);
					},
					error: function() {
						mostrarMensaje(MSG_ERROR);
					}
				});
			}
		}