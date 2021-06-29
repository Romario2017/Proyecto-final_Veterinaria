   // Load icons

var modalCodigoCita,modalCodigoMascota,modalCodigoEspecialista

    feather.replace();
    
    // Usuario actual
//  	const codigoPropietario = ${sessionScope.objUsuario.codigo_usuario};
 	
 	console.log("cod usu:  "+codigoPropietario);
    
    var selectedTipoServicio, selectedEspecialidadServicio;
    
    function agregarGrillaReserva(lista) {
		//console.log(lista)
		 $('#id_table_Reserva').DataTable().clear();
		 $('#id_table_Reserva').DataTable().destroy();
		 $('#id_table_Reserva').DataTable({
				data: lista,
				searching: false,
				ordering: true,
				processing: true,
				pageLength: 6,
				lengthChange: false,
				responsive: true,
				columns:[
					{data: "codigo_cita"},
					{data: "fecha_programada_cita"},
					{data: "servicio.tiposervicio.nombre_tipo_servicio"},
					{data: function(row, type, val, meta) {
					    var nombre = '';
					    nombre = row.usuario.nombre_usuario + ' ' + row.usuario.apellido_usuario;
					    return nombre;
					}, className: 'text-center mx-auto float-center'},
					{data: "mascota.nombre_mascota"},
					{data: "estado.nombre_estado_cita"},
					{data: function(row, type, val, meta){
					    
					var btnEditarReserva = '';
					btnEditarReserva =    `<button type="button" class="btn btn-info btn-sm btnModal_ActualizaServicio" onclick="obtenercita(${row.codigo_cita})">
					<i data-feather="edit-2"></i></button>`
					    
					    return btnEditarReserva;
					},className:'text-center mx-auto'},												
				]                                                   
		    });
		 	
		 	// Reload icons
		    feather.replace();
		 	
		 	$('#id_table_Reserva').DataTable().columns.adjust().draw();
		}
    
	function obtenercita(codigoCita) {
		 
   $.getJSON("obtenercita", {"codigoCita": codigoCita}, function(lista) {
	 modalCodigoCita=0
     modalCodigoMascota=0
     modalCodigoEspecialista=0
	$.each(lista, function(index, item) {
		if(item.codigo_estado_cita==3){
			$(botonRegistrarHistorial).hide()
		}
		
		
	 modalCodigoCita=item.codigo_cita
     modalCodigoMascota=item.codigo_mascota
     modalCodigoEspecialista=item.servicio.usuario.codigo_usuario
	$('#id_codigo_mascota').val(item.codigo_mascota)
	$('#id_nombre_mascota').val(item.mascota.nombre_mascota)
	$('#id_color_mascota').val(item.mascota.color.nombre_color_mascota)
	
	$('#id_sexo_mascota').val(item.mascota.sexo.nombre_sexo_mascota) 
	$('#id_especie_mascota').val(item.mascota.especie.nombre_especie_mascota)
	$('#id_raza_mascota').val(item.mascota.raza.nombre_raza_mascota)
	
	$('#id_codigo_servicio').val(item.servicio.codigo_servicio)
	$('#id_nombre_servicio').val(item.servicio.descripcion_servicio)
	$('#id_tipo_servicio').val(item.servicio.tiposervicio.nombre_tipo_servicio)
	$('#id_especialidad_servicio').val(item.servicio.especialidad.nombre_especialidad)
	
	$('#id_dia_servicio').val(item.servicio.diasemana.nombre_dia_semana)
	let dia=new Date(item.fecha_programada_cita)
	$('#id_fecha_cita').val(dia)

		$('#id_descripcion_servicio').val(item.servicio.descripcion_servicio)
	
	$('#id_especialista_servicio').val(item.servicio.usuario.apellido_usuario +" " +item.servicio.usuario.nombre_usuario )
	$('#id_hora_inicio_servicio').val(item.servicio.inicio_turno_servicio)
	$('#id_hora_fin_servicio').val(item.servicio.fin_turno_servicio)
	
	$('#id_motivo_cita').val(item.motivo_cita)
//	$('#id_diagnostico_cita').val(item.)
	let html = `<div class="dropdown-img-start imagenCard" 
				style="background-image: url('data:image/png;base64,${item.mascota.foto_mascota}');height: 174px;">
                </div>`
	$('#divImagenAnimal').html(html)
		})
		
		
		
   $.getJSON("obtenerhistorialclinico", {"codigoCita": codigoCita}, function(lista) {
	$.each(lista, function(index, item) {
		
			$('#id_diagnostico_cita').val(item.motivo_detalle_cita_historial_clinico)
	})

	})


	$('#id_modal_RegistraReserva').modal('show')
		
		
	})
	}
	
	function  registrarHistorialClinico(){
		
	let jsonFilter = {
		"codigo_mascota": modalCodigoMascota,
		"motivohistorialclinico": $('#id_diagnostico_cita').val() ,
		"codigo_especialista": modalCodigoEspecialista,
		codigo_cita: modalCodigoCita,
	}

	$.post("insertarHistorialClinico", jsonFilter, function(data) {
			listarCitasDatatable(codigoPropietario);
		$('#id_modal_RegistraReserva').modal('hide')
		mostrarMensajeExitoso("Historial Registrado Correctamente");
	})
	
	}
	
	
	
    
function limpiarModalDetail(){
	$('#id_codigo_mascota').val('')
	$('#id_nombre_mascota').val('')
	$('#id_color_mascota').val('')
	
	$('#id_sexo_mascota').val('')
	$('#id_especie_mascota').val('')
	$('#id_raza_mascota').val('')
	
	$('#id_codigo_servicio').val('')
	$('#id_nombre_servicio').val('')
	$('#id_tipo_servicio').val('')
	$('#id_especialidad_servicio').val('')
	
	$('#id_dia_servicio').val('')
	$('#id_fecha_cita').val('')
	$('#id_descripcion_servicio').val('')
	
	$('#id_especialista_servicio').val('')
	$('#id_hora_inicio_servicio').val('')
	$('#id_hora_fin_servicio').val('')
	
	$('#id_motivo_cita').val('')
	$('#id_diagnostico_cita').val('')
	
	
}

		function listarCitasDatatable(usuario) {
	        $.getJSON("listaCitaPorEspecialista", {"codigo_usuario": usuario}, function(lista) {
	            agregarGrillaReserva(lista);
	        });
	    }
		
        function listarMascotaPorPropietarioYNombre(propietario, nombre) {
            $.getJSON("listaMascotaPorPropietarioYNombre", {"codigo_propietario" : propietario,"nombre_mascota" : nombre}, function (lista) {
                agregarGrillaMascotas(lista);
            });
        }
        
        function seleccionarMascota(codigo, nombre, color, sexo, especie, raza) {
			$('#id_codigo_mascota').val(codigo);
			$('#id_nombre_mascota').val(nombre);
			$('#id_color_mascota').val(color);
			$('#id_sexo_mascota').val(sexo);
			$('#id_especie_mascota').val(especie);
			$('#id_raza_mascota').val(raza);
			$('#id_modal_BuscarMascota').modal("hide");
        }
        
        function seleccionarServicio(codigo, nombre, descripcion, tipo, especialidad, especialista, dia, inicio, fin) {
            $('#id_codigo_servicio').val(codigo);
        	$('#id_nombre_servicio').val(nombre);
        	$('#id_descripcion_servicio').val(descripcion);
        	$('#id_tipo_servicio').val(tipo);
        	$('#id_especialidad_servicio').val(especialidad);
        	$('#id_especialista_servicio').val(especialista);
        	$('#id_dia_servicio').val(dia);
        	$('#id_hora_inicio_servicio').val(inicio);
        	$('#id_hora_fin_servicio').val(fin);
        	$('#id_modal_BuscarServicio').modal("hide");
        }
		
	$(document).ready(function() {
	    
		// Mostrar citas al cargar la página
		listarCitasDatatable(codigoPropietario);
		
		const selectTipoServicio = $('#select_tipo_servicio');
		const selectEspecialidadServicio = $('#select_especialidad_servicio');
		
		// Get Tipo Servicio
		
		function generarSelectTipoServicio(idSelectTipoServicio) {
			$.getJSON('listaTipoServicio', function(data) {
				$.each( data, function( index, value ) {
					let option = document.createElement('option');
					option.value = value.codigo_tipo_servicio;
					option.text = value.nombre_tipo_servicio;
					idSelectTipoServicio.append(option);
				});
			});
		}
		
		generarSelectTipoServicio(selectTipoServicio);
		
		// Get Especialidad
		
		function generarSelectEspecialidad(idSelectEspecialidad) {
			$.getJSON('listaEspecialidad', function(data) {
				$.each( data, function(index, value) {
					let option = document.createElement('option');
					option.value = value.codigo_especialidad;
					option.text = value.nombre_especialidad;
					idSelectEspecialidad.append(option);
				});
			})
		}
		
		generarSelectEspecialidad(selectEspecialidadServicio);
		
		// Validar selects cuando cambie el option en Registrar
		
		selectTipoServicio.change(function(e) {
			selectedTipoServicio = e.target.selectedIndex;
			validateSelect(selectTipoServicio, selectedTipoServicio, 'tipo');
		});

		selectEspecialidadServicio.change(function(e) {
		    selectedEspecialidadServicio = e.target.selectedIndex;
			validateSelect(selectEspecialidadServicio, selectedEspecialidadServicio, 'especialidad');
		});
		
		// Cargar código de propietario en formulario
		$('#id_codigo_propietario').val(codigoPropietario);
		
		/* Mostrar Modal de Registro de Reserva de Cita */
		
		const btnModalRegister = $('#id_btnModal_RegistraReserva');
		const modalRegister = $('#id_modal_RegistraReserva');
		
		btnModalRegister.click(function() {
			debugger
			modalRegister.modal("show");
		});
		
		/* Mostrar Modal de Buscar Mascota */
		
		const btnMostrarBuscarMascota = $('#id_btnModal_BuscarMascota');
        const modalBuscarMascota = $('#id_modal_BuscarMascota');

        btnMostrarBuscarMascota.click(function () {
            modalBuscarMascota.modal("show");
        });
        
        /* Filtrar Mascota */
        
        const btnFilterMascota = $('#filtra_mascota');
	
        btnFilterMascota.click(function () {
            var propietario = $('#id_codigo_propietario').val();
            var nombre = $('#id_mascota_filtro').val();

            if (propietario.length > 0) {
                listarMascotaPorPropietarioYNombre(propietario, nombre);
            }
        });
        
     	/* Mostrar Modal de Buscar Servicio */
        
        const btnMostrarBuscarServicio = $('#id_btnModal_BuscarServicio');
        const modalBuscarServicio = $('#id_modal_BuscarServicio');
        
        btnMostrarBuscarServicio.click(function() {
            modalBuscarServicio.modal("show");
        });
        
        /* Filtrar Servicio */
        
        const btnFilterServicio = $('#filtra_servicio');
        
        btnFilterServicio.click(function() {
            // Validar selects
            validateSelect(selectTipoServicio, selectedTipoServicio, 'tipo');
			validateSelect(selectEspecialidadServicio, selectedEspecialidadServicio, 'especialidad');
            
            if(selectedTipoServicio > 0 && selectedEspecialidadServicio > 0) {
                listaServicioPorTipoYEspecialidad(selectedTipoServicio, selectedEspecialidadServicio);
            }
        });
        


        
        function limpiarRegistrarCita() {
            $('#id_codigo_mascota').val('');
            $('#id_nombre_mascota').val('');
            $('#id_color_mascota').val('');
            $('#id_sexo_mascota').val('');
            $('#id_especie_mascota').val('');
            $('#id_raza_mascota').val('');
            $('#id_codigo_servicio').val('');
            $('#id_nombre_servicio').val('');
            $('#id_descripcion_servicio').val('');
            $('#id_tipo_servicio').val('');
            $('#id_especialidad_servicio').val('');
            $('#id_especialista_servicio').val('');
            $('#id_dia_servicio').val('');
            $('#id_fecha_cita').val('');
            $('#id_hora_inicio_servicio').val('');
            $('#id_hora_fin_servicio').val('');
            $('#id_motivo_cita').val('');
        }
        
        
	});