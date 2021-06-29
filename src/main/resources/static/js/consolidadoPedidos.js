
$(document).ready(function() {
	listarCarrito()
});



ArrayTemporal=null;

function listarCarrito() {
	let jsonFilter = {
		"codigo_producto": 0,
		"codigo_usuario": codigoPropietario,
		"estado": 0
	}

	$.post("listarCarrito", jsonFilter, function(data) {
		let html = ""
		let subtotal = 0
		let envio = 15
		let igv = 0
		let total = 0
		let contador = 1
		
		ArrayTemporal = data;
		$.each(data, function(index, item) {
			
			html += `
	<tr role="row" class="odd">
		<td class="sorting_1">${contador}</td>
		<td class=" text-center mx-auto float-center">
			<img src="data:image/png;base64,${item.producto.foto1_producto}" class="imgbig" alt="Pet image" style="width: 200px;height: 200px;"></td>
		<td>${item.producto.nombre_producto}</td>
		<td>${item.producto.descripcion_simple_producto}</td>
		<td>${item.producto.precio_producto}</td>
		<td>
			<button type="button" class="btn btn-danger" title="Eliminar" onclick="eliminarProducto(${item.codigo_carrito},${item.codigo_usuario})">
	 			<i class="fa fa-trash" aria-hidden="true"></i>
			</button>
		</td>
	</tr>`

			subtotal = subtotal + item.producto.precio_producto
			contador++
		})

		igv = subtotal * 0.18;
		total = igv + subtotal + envio
		let textosubtotal = `S/.${subtotal.toFixed(2)}`
		let textoigv = `S/.${igv.toFixed(2)}`
		let textototal = `S/.${total.toFixed(2)}`
		let textoenvio = `S/.${envio.toFixed(2)}`

		$('#tableSubTotal').text(textosubtotal);
		$('#tableIgv').text(textoigv);
		$('#tableTotal').text(textototal);
		$('#tableEnvio').text(textoenvio);
		$('#tableConsolidado').html(html);
	})
}

function pintarImg(jsonString) {
	let json = JSON.parse(jsonString)
	let html = `<div class="dropdown-img-start imagenCard" 
				style="background-image: url('data:image/png;base64,${json.foto1_producto}');height: 237px;">
                </div>`
	$('#imagenCarrito').html(html)

}

function eliminarProducto(codcarrito, codusuario) {
	console.log("CodProducto", codcarrito)
	console.log("CodUsuario", codusuario)
	let filtro = {
		"codigo_carrito": codcarrito,
		"codigo_usuario": codusuario,
	}
	$.post("eliminarProducto", filtro, function(data) {
		listarCarrito()
		mostrarMensajeExitoso('Eliminado Correctamente')

	})
}



function finalizarCompra() {
	bloquearPagina();
	// Compra realizada
 	 arraydetalle =[];
	
	$.each(ArrayTemporal, function(index, item) {
		arraydetalle.push({
				"detalletransaccion_codigo":null,
				"transaccion_fecha" :new Date(),
				"monto": item.producto.precio_producto,
				"transaccion_codigo":null,
				"codigo_carrito": item.codigo_carrito
			})
	})
	
			
	var cabecera = {
		"transaccion_codigo": null,
		"transaccion_fecha": new Date(),
		"estado": 1,
		"monto" :200,
		"codigo_usuario":codigoPropietario,
		"detalle": arraydetalle
	}
	
	
	let json={
		json:JSON.stringify(cabecera)
	}
	if(arraydetalle.length == 0){
		mostrarMensajeError("No se encontrar\u00f3n Productos")
		desbloquearPagina();
	}else{
		$.post("agregarTransaccion", json , function(data) {
		listarCarrito()
		mostrarMensajeExitoso("Compra Completada !")
		desbloquearPagina();
		})
	}
//	 registrarTransaccion
	
	
}





//tarjeta validaciones   confirm-purchase
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

function mostrarMensajeError(mensaje) {
	new Notify({
		status: 'error',
		title: 'Error',
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


function mostrarMensajeAdvertencia(mensaje) {
	new Notify({
		status: 'warning',
		title: 'Advertencia',
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







let ccNumberInput = document.querySelector('.cc-number-input'),
	ccNumberPattern = /^\d{0,16}$/g,
	ccNumberSeparator = " ",
	ccNumberInputOldValue,
	ccNumberInputOldCursor,

	ccExpiryInput = document.querySelector('.cc-expiry-input'),
	ccExpiryPattern = /^\d{0,4}$/g,
	ccExpirySeparator = "/",
	ccExpiryInputOldValue,
	ccExpiryInputOldCursor,

	ccCVCInput = document.querySelector('.cc-cvc-input'),
	ccCVCPattern = /^\d{0,3}$/g,

	mask = (value, limit, separator) => {
		var output = [];
		for (let i = 0; i < value.length; i++) {
			if (i !== 0 && i % limit === 0) {
				output.push(separator);
			}

			output.push(value[i]);
		}

		return output.join("");
	},
	unmask = (value) => value.replace(/[^\d]/g, ''),
	checkSeparator = (position, interval) => Math.floor(position / (interval + 1)),
	ccNumberInputKeyDownHandler = (e) => {
		let el = e.target;
		ccNumberInputOldValue = el.value;
		ccNumberInputOldCursor = el.selectionEnd;
	},
	ccNumberInputInputHandler = (e) => {
		let el = e.target,
			newValue = unmask(el.value),
			newCursorPosition;

		if (newValue.match(ccNumberPattern)) {
			newValue = mask(newValue, 4, ccNumberSeparator);

			newCursorPosition =
				ccNumberInputOldCursor - checkSeparator(ccNumberInputOldCursor, 4) +
				checkSeparator(ccNumberInputOldCursor + (newValue.length - ccNumberInputOldValue.length), 4) +
				(unmask(newValue).length - unmask(ccNumberInputOldValue).length);

			el.value = (newValue !== "") ? newValue : "";
		} else {
			el.value = ccNumberInputOldValue;
			newCursorPosition = ccNumberInputOldCursor;
		}

		el.setSelectionRange(newCursorPosition, newCursorPosition);

		highlightCC(el.value);
	},
	highlightCC = (ccValue) => {
		let ccCardType = '',
			ccCardTypePatterns = {
				amex: /^3/,
				visa: /^4/,
				mastercard: /^5/,
				disc: /^6/,

				genric: /(^1|^2|^7|^8|^9|^0)/,
			};

		for (const cardType in ccCardTypePatterns) {
			if (ccCardTypePatterns[cardType].test(ccValue)) {
				ccCardType = cardType;
				break;
			}
		}

		let activeCC = document.querySelector('.cc-types__img--active'),
			newActiveCC = document.querySelector(`.cc-types__img--${ccCardType}`);

		if (activeCC) activeCC.classList.remove('cc-types__img--active');
		if (newActiveCC) newActiveCC.classList.add('cc-types__img--active');
	},
	ccExpiryInputKeyDownHandler = (e) => {
		let el = e.target;
		ccExpiryInputOldValue = el.value;
		ccExpiryInputOldCursor = el.selectionEnd;
	},
	ccExpiryInputInputHandler = (e) => {
		let el = e.target,
			newValue = el.value;

		newValue = unmask(newValue);
		if (newValue.match(ccExpiryPattern)) {
			newValue = mask(newValue, 2, ccExpirySeparator);
			el.value = newValue;
		} else {
			el.value = ccExpiryInputOldValue;
		}
	};

ccNumberInput.addEventListener('keydown', ccNumberInputKeyDownHandler);
ccNumberInput.addEventListener('input', ccNumberInputInputHandler);

ccExpiryInput.addEventListener('keydown', ccExpiryInputKeyDownHandler);
ccExpiryInput.addEventListener('input', ccExpiryInputInputHandler);
