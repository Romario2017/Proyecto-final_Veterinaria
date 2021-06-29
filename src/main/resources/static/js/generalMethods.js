var re = /"/gi;

$(document).ready(function() {
	listarCarrito()
	obtenerUltimoPedido() 
	obtenerProximaCita()
});

function listarCarrito() {
	let jsonFilter = {
		"codigo_producto": 0,
		"codigo_usuario": codigoPropietario,
		"estado": 0
	}

	$.post("listarCarrito", jsonFilter, function(data) {
		let html=""
		let total=0
		$.each(data, function(index, item) {
			
			 html += `<div class="col-md-12 cardlistCarrito" onMouseOver="pintarImg('${JSON.stringify(item.producto).replace(re, '&quot;')}')">
          <h3 class="textPrograma" style="font-size: 12px;margin:0px;color:black;font-weight:500">${item.producto.categoria.nombre_categoria_producto}</h3>
          <h3 class="textPrograma" style="font-size: 12px;margin:0px;color:black;font-weight:bold">${item.producto.nombre_producto}</h3>
          <p style="margin: 0 0 3px;color:#838688;text-align: left;font-weight: 600;
          font-size: 13px;
          color: #c39f3f;">${item.producto.serie_producto}
          </p>
          <p style="font-size: 12px;margin:0px;color:black;font-weight:bold">S/.${item.producto.precio_producto.toFixed(2)} 
          </p>
          </div>`
          total=total+item.producto.precio_producto
			})
			let texto=`Total:S/.${total.toFixed(2)}`
			$('#totalCarrito').text(texto)
	$('#listaCarrito').html(html)
	})
}

function obtenerUltimoPedido() {
	let jsonFilter = {
		"codigo_producto": 0,
		"codigo_usuario": codigoPropietario,
		"estado": 0
	} 
	
	$.post("obtenerUltimoPedido",jsonFilter, function(dt) {
		console.log("obtenerUltimoPedido obtenida: "+ dt);
		let data = new Date(dt);
		var fecha = `
		${(data.getMonth()+1).toString().padStart(2, '0')}/
		${data.getDate().toString().padStart(2, '0')}/
		${data.getFullYear().toString().padStart(4, '0')} 
		`
		/*
		${data.getHours().toString().padStart(2, '0')}:
		${data.getMinutes().toString().padStart(2, '0')}:
		${data.getSeconds().toString().padStart(2, '0')}
		*/
		var hora = data.toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true })
		if(dt != null && dt != undefined && dt != ""){
			let html = `<p class="card__light__title">\u00daltimo Pedido</p>
					<p class="font__title title__color font__semibold m-0 titlecardPrecio">${fecha} </p>
                    <p class="font__title title__color font__semibold m-0 titlecardPrecio">${hora}  </p>`
		$('#ultimopedido').html(html)
		}else{
				let html = `<p class="card__light__title">\u00daltimo Pedido</p>
					<p class="font__title title__color font__semibold m-0 titlecardPrecio">Sin Ultimo Pedido </p>
                    <p class="font__title title__color font__semibold m-0 titlecardPrecio">  </p>`
		$('#ultimopedido').html(html)
		}
		
	})
}


function obtenerProximaCita() {
	let jsonFilter = {
		"codigo_producto": 0,
		"codigo_usuario": codigoPropietario,
		"estado": 0
	} 
	
	$.post("obtenerProximaCita", jsonFilter, function(dt) {
		console.log("obtenerProximaCita obtenida: "+ dt);
		let data = new Date(dt);
		var fecha = `
		${(data.getMonth()+1).toString().padStart(2, '0')}/
		${data.getDate().toString().padStart(2, '0')}/
		${data.getFullYear().toString().padStart(4, '0')} 
		`
		/*
		${data.getHours().toString().padStart(2, '0')}:
		${data.getMinutes().toString().padStart(2, '0')}:
		${data.getSeconds().toString().padStart(2, '0')}
		*/
		var hora = data.toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true })
		if(dt != null && dt != undefined && dt != ""){
			let html = `<p class="card__light__title">Pr\u00f3xima Cita</p>
					<p class="font__title title__color font__semibold m-0 titlecardPrecio">${fecha} </p>
                    <p class="font__title title__color font__semibold m-0 titlecardPrecio">${hora}  </p>`
		$('#proximacita').html(html)
		}else{
			let html = `<p class="card__light__title">Pr\u00f3xima Cita</p>
					<p class="font__title title__color font__semibold m-0 titlecardPrecio">Sin Citas</p>
                    <p class="font__title title__color font__semibold m-0 titlecardPrecio"></p>`
		$('#proximacita').html(html)
		}
		
	})
}


function pintarImg(jsonString) {
	let json = JSON.parse(jsonString)
	let html = `<div class="dropdown-img-start imagenCard" 
				style="background-image: url('data:image/png;base64,${json.foto1_producto}');height: 237px;">
                </div>`
	$('#imagenCarrito').html(html)

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


function desbloquearPagina() {
    // eliminamos el div que bloquea pantalla
    $("#WindowLoad").remove();
 
}
 
function bloquearPagina(mensaje) {
    //eliminamos si existe un div ya bloqueando
    desbloquearPagina();
 
	console.log("bloquear pantalla");
    //si no enviamos mensaje se pondra este por defecto
    if (mensaje === undefined) mensaje = "Procesando la informaci\u00f3n Espere por favor";
 
    //centrar imagen gif
    height = 20;//El div del titulo, para que se vea mas arriba (H)
    var ancho = 0;
    var alto = 0;
 
    //obtenemos el ancho y alto de la ventana de nuestro navegador, compatible con todos los navegadores
    if (window.innerWidth == undefined) ancho = window.screen.width;
    else ancho = window.innerWidth;
    if (window.innerHeight == undefined) alto = window.screen.height;
    else alto = window.innerHeight;
 
    //operación necesaria para centrar el div que muestra el mensaje
    var heightdivsito = alto/2 - parseInt(height)/2;//Se utiliza en el margen superior, para centrar
 
   //imagen que aparece mientras nuestro div es mostrado y da apariencia de cargando  | </div><img  src='img/load.gif'>
  // imgCentro = "<div style='text-align:center;height:" + alto + "px;'><div  style='color:#000;margin-top:" + heightdivsito + "px; font-size:20px;font-weight:bold'>" + mensaje + "</div>";
 imgCentro = `<div class="lds-roller"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>` 
        //creamos el div que bloquea grande------------------------------------------
        div = document.createElement("div");
        div.id = "WindowLoad"
        div.style.width = ancho + "px";
        div.style.height = alto + "px";
        $("body").append(div);
 
        //creamos un input text para que el foco se plasme en este y el usuario no pueda escribir en nada de atras
        input = document.createElement("input");
        input.id = "focusInput";
        input.type = "text"
 
        //asignamos el div que bloquea
        $("#WindowLoad").append(input);
 
        //asignamos el foco y ocultamos el input text
        $("#focusInput").focus();
        $("#focusInput").hide();
 
        //centramos el div del texto
        $("#WindowLoad").html(imgCentro);
 

    function newFunction() {
        "><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>";
    }
}