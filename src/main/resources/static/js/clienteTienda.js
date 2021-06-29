
$(document).ready(function() {
	let json = { 'nombre_producto': "" }
	buscarProducto(json)
});

function buscarProducto(json) {
	$.get("listaProductoPorNombre", json, function(data) {
		let html = ``

		$.each(data, function(index, item) {

			html += `<div class="col-8 col-md-3 text-center col-dcar">
						<div class="example-1 card">
						<div class="wrapper2 imagenCard"
							style="background-image: url('data:image/png;base64,${item.foto1_producto}');">
							<div class="date">
								<span class="day">#${item.codigo_producto}</span> 
								<span class="month">cantidad</span>
									<span class="month">${item.stock_producto}</span>
							</div>
							<div class="favoritos"></div>
							

							<div class="data">
								<div class="content" style="min-height: 222px">

									<h1 class="title">
										<a style="color: #000000; font-weight: bold;"
											href="#">${item.categoria.nombre_categoria_producto}</a>
											
											
									</h1>
										<h1 class="title">
										<a style="color: #000000; font-weight: bold;"
											href="#">${item.nombre_producto}</a>
									</h1>
									<h1 class="titleThird">
										<span class="precioModulo">S/.${item.precio_producto.toFixed(2)}</span>
									</h1>
									<button type="button"
										class="btn btn-default botondeoro" onclick="agregarcarrito('${JSON.stringify(item).replace(re, '&quot;')}')"
										style="margin-top: 12px; width: 170px; color: white">Agregar
										al Carrito</button>
								</div>

								<!-- <label for="show-menu" class="menu-button"><span></span></label> -->
							</div>
							<input type="checkbox" id="show-menu">
							<ul class="menu-content">
								<li style="width: 100%; background: #312f2fcc"><span
									style="color: white; top: 10px;"> undefined </span></li>
							</ul>
						</div>
					</div>
				</div>`
		});

		$('#lstProduct').html(html)
	})
}

$("#filtro_producto").keyup(function() {
	let json = { 'nombre_producto': $("#filtro_producto").val() }
	buscarProducto(json)
});
$("#filtro_producto").focus(function() {
	let json = { 'nombre_producto': $("#filtro_producto").val() }
	buscarProducto(json)
});



function agregarcarrito(jsonString) {
	let json = JSON.parse(jsonString)
	let jsoninsert={
		"codigo_producto":json.codigo_producto,
		"codigo_usuario":codigoPropietario,
		"estado":1
	}
	
	$.post("insertarObtenerCarrito", jsoninsert, function(data) {
	listarCarrito()
	mostrarMensajeExitoso("Item Agregado al Carrito")
	})
	
}


function mostrarMensajeExitoso(mensaje) {
	new Notify({
		status: 'success',
		title: 'Exitoso',
		text: mensaje,
		effect: 'fade',
		speed: 500,
		customClass: null,
		customIcon: null,
		showIcon: true,
		showCloseButton: true,
		autoclose: true,
		autotimeout: 2000,
		gap: 20,
		distance: 20,
		type: 1,
		position: 'right top'
	})
}
