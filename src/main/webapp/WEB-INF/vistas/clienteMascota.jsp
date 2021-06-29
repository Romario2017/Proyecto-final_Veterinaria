<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<jsp:include page="validarSesion.jsp" />
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Expires" content="-1" />
	<meta http-equiv="Cache-Control" content="private" />
	<meta http-equiv="Cache-Control" content="no-store" />
	<meta http-equiv="Pragma" content="no-cache" />
	
	<link rel="stylesheet" href="css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="css/dashboard.css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/simditor.css" />
	<!-- Menu y Header requieren jQuery al inicio -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<title>Mascota | Dogtor</title>
	<style type="text/css">
.card {
	float: left;
	border: none;
	width: 320px;
	/*padding:1px 15px;*/
}

.imagenCard {
	background-size: cover;
	background-size: 100% 100%;
	background-repeat: no-repeat;
}

.card .menu-content {
	margin: 0;
	padding: 0;
	list-style-type: none;
}

.card .menu-content::before, .card .menu-content::after {
	content: "";
	display: table;
}

.card .menu-content::after {
	clear: both;
}

.card .menu-content li {
	display: inline-block;
}

.card .menu-content a {
	color: #fff;
}

.card .menu-content span {
	position: absolute;
	left: 50%;
	top: 0;
	font-size: 10px;
	font-weight: 700;
	font-family: "Open Sans";
	transform: translate(-50%, 0);
}

.card .wrapper2 {
	border-radius: 20px;
	background-color: #fff;
	min-height: 400px;
	position: relative;
	overflow: hidden;
	box-shadow: 0 19px 38px rgba(0, 0, 0, 0.3), 0 15px 12px
		rgba(0, 0, 0, 0.2);
}

.card .wrapper2:hover .data {
	transform: translateY(0);
}

.card .data {
	position: absolute;
	bottom: 0;
	width: 100%;
	transform: translateY(calc(70px + 1em));
	transition: transform 0.3s;
}

.card .data .content {
	padding: 1em !important;
	position: relative;
	z-index: 1;
}

.card .author {
	font-size: 12px;
}

.card .title {
	margin-top: 3px;
	height: auto;
	font-size: 18px;
	font-weight: 600;
	color: #636162;
}
/*    .card .title { 
            margin-top: 38px;
            height: 45px;
            font-size: 18px;
            font-weight: 600;
            color: #636162;
        }*/
.card .text {
	height: 70px;
	margin: 0;
}

.card input[type=checkbox] {
	display: none;
}

.card input[type=checkbox]:checked+.menu-content {
	transform: translateY(-60px);
}

.example-1 .date {
	position: absolute;
	top: 0;
	left: 0;
	background-color: #FFFFFF;
	color: #fff;
	padding: 0.8em;
}
/*    .example-1 .date {
            position: absolute;
            top: 0;
            left: 0;
            background-color: #77d7b9;
            color: #fff;
            padding: 0.8em;
        }*/
.example-1 .date span {
	display: block;
	text-align: center;
}

.example-1 .date .day {
	font-weight: 700;
	font-size: 24px;
	color: black;
	text-shadow: 2px 3px 2px #000000a3;
}

.example-1 .date .month {
	text-transform: uppercase;
	color: #8C7E4A;
	font-weight: 800;
}

.example-1 .date .month, .example-1 .date .year {
	font-size: 12px;
}

.year {
	color: black;
	font-weight: bold;
}

.favoritos {
	right: 0;
	left: unset;
	position: absolute;
	padding: 0.8em;
}

.example-1 .content {
	background-color: #fff;
	box-shadow: 0 5px 30px 10px rgba(0, 0, 0, 0.3);
}

.example-1 .title a {
	color: gray;
}

.example-1 .menu-button {
	position: absolute;
	z-index: 999;
	top: 16px;
	right: 16px;
	width: 25px;
	text-align: center;
	cursor: pointer;
}

.example-1 .menu-button span {
	width: 5px;
	height: 5px;
	background-color: gray;
	color: gray;
	position: relative;
	display: inline-block;
	border-radius: 50%;
}

.example-1 .menu-button span::after, .example-1 .menu-button span::before
	{
	content: "";
	display: block;
	width: 5px;
	height: 5px;
	background-color: currentColor;
	position: absolute;
	border-radius: 50%;
}

.example-1 .menu-button span::before {
	left: -10px;
}

.example-1 .menu-button span::after {
	right: -10px;
}

.example-1 .menu-content {
	text-align: center;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	z-index: -1;
	transition: transform 0.3s;
	transform: translateY(0);
}

.example-1 .menu-content li {
	width: 33.333333%;
	float: left;
	background-color: #77d7b9;
	height: 60px;
	position: relative;
}

.example-1 .menu-content a {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 24px;
}

.example-1 .menu-content span {
	top: -10px;
}

.icocard {
	padding-left: 5px;
	color: white
}

.botondeoro {
	background: rgb(60, 114, 245);
	background: linear-gradient(90deg, rgba(60, 114, 245, 1) 0%,
		rgba(91, 175, 226, 1) 70%, rgba(0, 212, 255, 1) 100%);
	width: 100%;
	color: white;
	font-weight: 600;
}

.scrollBoxImg {
	vertical-align: text-top;
	height: 158px;
	width: 225px;
	border-radius: 5px;
}

.precioModulo {
	font-size: 25px;
	font-weight: 600;
	color: #d2c131;
	font-family: sans-serif;
}

.col-dcar {
	margin-left: 65px;
	margin-bottom: 30px;
}

.cardlistCarrito {
	margin: 0px;
	padding: 5px;
	border: 1px solid #c8c8c8;
	background: whitesmoke;
}

#listaCarrito {
	height: 237px;
	overflow-x: hidden;
}

.totalCarrito {
	margin: 10px 10px 11px;
	font-size: 18px;
	color: white;
	font-weight: bold;
}
.irCarrito{
color: white !important;
    width: 100%;
   border-right: 2px solid;
    border: none;
    border-radius: 5px;
    height: 48px;
    background: #708bed;
    text-decoration: underline;
}
</style>
</head>

<body class="background__light__gray">

    <main id="dashboard">
        <div class="container-fluid align-items-stretch">
		
		<!-- Header on XS, SM, and MD -->
		<jsp:include page="header.jsp" />
            
            <div class="row">
                
                <!-- Menu on LG and XXL -->
                <jsp:include page="menu.jsp" />
                
                <!-- Dashboard Content -->
                <div id="dashboardContent" class="col-12 col-md-10 dashboard__content mt-lg-1 mt-5 menu__transition mx-auto">
                    <div class="content__body background__light__white menu__transition">
                        <div class="row justify-content-center">
                            <div class="content__body__title col-4">
                                <p class="font__title title__color font__semibold">Resumen</p>
                            </div>
                            <div class="content__body__options col-8 d-flex flex-row justify-content-end align-items-top">
                                <div class="options__search d-flex flex-row align-items-center d-none d-md-flex mx-2">
                                    <input type="text" name="filtro_nombre_servicio" id="id_nombre_filtro" class="input__search title__color" placeholder="Buscar...">
                                    <i data-feather="search" class="icon__light"></i>
                                </div>
                                <div class="options__filter d-none d-lg-flex mx-2">
                                    <select name="select_time" id="id_select_time" class="select__time form-select">
                                        <option value="0">Este mes</option>
                                    </select>
                                </div>
                                <div id="btnMessage" class="options__message d-flex align-items-center d-none d-lg-flex mx-2">
                                    <i data-feather="message-square"></i>
                                </div>
                                 <div id="btnCart"
									class="options__message d-flex align-items-center d-none d-lg-flex mx-2">


									<a class="nav-link dropdown-toggle" id="navbarLandings"
										data-bs-toggle="dropdown" href="#" aria-haspopup="true"
										aria-expanded="false"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
									</a>
									<div class="dropdown-menu dropdown-menu-xl p-0"
										style="width: 432px;" aria-labelledby="navbarLandings">
										<div class="row gx-0">
											<div class="col-12 col-lg-6" id="imagenCarrito"></div>
											<div class="col-12 col-lg-6">
												<div class="dropdown-body">
													<div class="row gx-0">
														<div class="col-12" id="listaCarrito"></div>

													</div>
													<!-- / .row -->
												</div>
											</div>

											<div class="col-12 col-lg-12">
												<div class="dropdown-body">
													<div class="row gx-0">
														
														<div class="col-6" style="background: #6888F9;text-align: center ;padding-top: 10px;">
															<a href="/consolidadoPagos" class="irCarrito">
																Ir al carrito <svg xmlns="http://www.w3.org/2000/svg" 
																width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
															</a>
														</div>
														<div class="col-6" style="background:#6888F9">
															<p class="totalCarrito" id="totalCarrito">Total:
																S/.00.00</p>
														</div>
														<div class="col-6" style="background: #6888F9;"></div>
													</div>
													<!-- / .row -->
												</div>
											</div>

										</div>
										<!-- / .row -->
									</div>
								</div>
                                <div id="btnProfile" class="options__profile mx-2">
                                    <img src="./images/avatar/random-1.svg" alt="Avatar" class="profile__image">
                                </div>
                        </div>
                        
                         <div class="content__statistics row mt-4">
                            <div class="col-12 col-md-6 mt-2 mb-2">
                                <div class="card__light d-flex justify-content-around flex-column align-items-center align-items-md-start" id="proximacita">
                            	</div>
                            </div>
                            <div class="col-12 col-md-6 mt-2 mb-2">
                                <div class="card__light d-flex justify-content-around flex-column align-items-center align-items-md-start" id="ultimopedido">
                           
                                </div>
                            </div>
                        </div>
                        
                        <div class="content__alert row">
                            <div class="col-12 mt-4 mb-2">
                                <div class="card__light">
                                    <div class="card__light__header d-flex justify-content-between my-3">
                                        <p class="font__subtitle title__color font__semibold">Mis Mascotas</p>
                                        <button class="btn btn__primary" type="button" data-toggle="modal" id="id_btnModal_RegistraMascota" data-target="#id_modal_RegistraMascota">
                                        	<i data-feather="plus"></i>
                                        	Nuevo
                                        </button>
                                    </div>
                                    <div class="card__light__body row">
                                    	<form id="id_form_elimina" action="eliminaCita">
											<input type="text" id="id_elimina" name="codigo_mascota" class="d-none">
											<input type="text" id="id_visibilidad_elimina" name="codigo_visibilidad_mascota" class="d-none">
										</form>
                                        <div class="row pt-8 pb-8 align-items-center justify-content-center">
                                        	<div  class="row"  id="mascotas_container"></div>
                                        </div>                           
                                        
                                        <!-- class="d-flex flex-wrap justify-content-center align-items-center mt-3 mb-3 -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            	</div>
            </div>
        </div>
    </main>
    
    <div class="container-fluid">
		<!-- Modal de Registro de Mascota -->
		
		<div class="modal fade p-0" id="id_modal_RegistraMascota">
    		<div class="modal-dialog modal-lg">
    			<div class="modal-content">
    				<div class="modal-header">
    					<div class="col-12 justify-content-center align-items-center d-flex">
    						<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Registro de Mascota</b></h1>
    					</div>
    				</div>
    				<div class="modal-body">
    					<div class="container">
    						 <div class="row mt-2">
					            <div class="col-12 justify-content-center align-items-center d-flex">
					                <main class="col-12 col-md-10">
					                    <form id="id_form_registra">
					                      
					                      <input type="text" id="id_propietario" name="codigo_propietario" value="${sessionScope.objUsuario.codigo_usuario}" class="d-none">
					                    
					                      <div class="form-group row">
					                      	<div class="col-12 mb-3">
					                      		<div class="form-floating">
					                      			<input type="file" class="form-control" id="id_foto" name="foto_mascota" />
					                      		</div>
					                      	</div>
					                      </div>
					                      
					                      <div class="form-group form-floating mb-3">
						                      <input type="text" class="form-control" id="id_nombre" name="nombre_mascota" placeholder="John" autocomplete="on" >
						                      <label for="id_nombre">Nombre</label>
					                      </div>
					                      
					                      <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
										  		<div class="form-floating">
							                      	<select class="form-select" id="select_especie" name="codigo_especie_mascota" aria-label="Default select example">
													  <option selected value="0">Seleccione Especie</option>
													</select>
													<label for="select_especie">Especie</label>
					                      		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
							                      	<select class="form-select" id="select_raza" name="codigo_raza_mascota" aria-label="Default select example">
													  <option selected value="0">Seleccione Raza</option>
													</select>
													<label for="select_raza">Raza</label>
						                      </div>
										  	</div>
										  </div>
					                      <div class="form-group row">
					                      	<div class="col-12 col-md-6 mb-3">
						                      	<div class="form-floating">
							                      	<select class="form-select" id="select_color" name="codigo_color_mascota" aria-label="Default select example">
													  <option selected value="0">Seleccione Color</option>
													</select>
													<label for="select_color">Color</label>
						                      </div>
					                      	</div>
					                      	<div class="col-12 col-md-6 mb-3">
						                      	<div class="form-floating">
							                      	<select class="form-select" id="select_sexo" name="codigo_sexo_mascota" aria-label="Default select example">
													  <option selected value="0">Seleccione Sexo</option>
													</select>
													<label for="select_sexo">Sexo</label>
						                      </div>
					                      	</div>
					                      </div>
					                      <div class="form-group form-floating mb-3">
					                        <input type="date" class="form-control" id="id_fecha_nacimiento" name="fecha_nacimiento_mascota" autocomplete="on">
					                        <label for="id_fecha_nacimiento">Fecha de nacimiento</label>
					                      </div>
										  <div class="form-group row">
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="form-floating">
										  			<input type="text" class="form-control" id="id_identificacion" name="codigo_identificacion_mascota" autocomplete="on" >
						                   			<label for="id_identificación"># Identificación</label>
										  		</div>
										  	</div>
										  	<div class="col-12 col-md-6 mb-3">
											  	<div class="col form-floating">
										  			<input type="text" class="form-control" id="id_sanitaria" name="codigo_cartilla_sanitaria" autocomplete="on" >
						                    		<label for="id_sanitaria"># Cartilla Sanitaria</label>
										  		</div>
										  	</div>
					                      </div>
					                      <button class="w-100 btn btn-lg btn-primary btn-generic" type="button" id="registrar_mascota">Registrar</button>
					                    </form>
					                  </main>
					            </div>
					        </div>
    					</div>
    				</div>
    				<div class="modal-footer">
    					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>

	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
    <!-- Custom JS -->
    <script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/createNewErrorMessage.js"></script>
	<script type="text/javascript" src="js/menuDashboard.js"></script>
	<script type="text/javascript" src="js/generalMethods.js"></script>
	<script type="text/javascript">
	
    // Load icons
    feather.replace();
    
    // Usuario actual
     
 	//const codigoPropietario = ${sessionScope.objUsuario.codigo_usuario};
    
	$(document).ready(function() {
		
		// Selects
		
		const selectEspecie = $('#select_especie');
		const selectColor = $('#select_color');
		const selectSexo = $('#select_sexo');
		const selectRaza = $('#select_raza');
		
		// Botones
		const btnRegister = $('#registrar_mascota');
		const btnModalRegister = $('#id_btnModal_RegistraMascota');
		
		// Modals
		
		const modalRegister = $('#id_modal_RegistraMascota');
		
		// Abrir Modal con Click
		
		btnModalRegister.click(function() {
			modalRegister.modal("show");
		});
		
		// Get Especie
		
		function generarSelectEspecie(idSelectEspecie) {
			$.getJSON('listaEspecie', function(data) {
				$.each( data, function( index, value ) {
					let option = document.createElement('option');
					option.value = value.codigo_especie_mascota;
					option.text = value.nombre_especie_mascota;
					idSelectEspecie.append(option);
				});
			});
		}
		
		generarSelectEspecie(selectEspecie);
		
		// Get Color
		
		function generarSelectColor(idSelectColor) {
			$.getJSON('listaColor', function(data){
				  $.each( data, function( index, value ) {
					  let option = document.createElement('option');
					  option.value = value.codigo_color_mascota;
					  option.text = value.nombre_color_mascota;
					  idSelectColor.append(option);
				  });
			});
		}
		
		generarSelectColor(selectColor);
		
		// Get Sexo
		
		function generarSelectSexo(idSelectSexo) {
			$.getJSON('listaSexo', function(data) {
				$.each( data, function( index, value) {
					  let option = document.createElement('option');
					  option.value = value.codigo_sexo_mascota;
					  option.text = value.nombre_sexo_mascota;
					  idSelectSexo.append(option);
				});
			});
		}
		
		generarSelectSexo(selectSexo);
			
		var selectedColor, selectedSexo, selectedRaza, selectedEspecie;
		
		// Validar selects cuando cambie el option en Registrar
		
		selectColor.change(function(e) {
			selectedColor = e.target.selectedIndex;
			validateSelect(selectColor, selectedColor, 'color');
		});

		selectSexo.change(function(e) {
			selectedSexo = e.target.selectedIndex;
			validateSelect(selectSexo, selectedSexo, 'sexo');
		});
		
		selectRaza.change(function(e) {
			selectedRaza = e.target.selectedIndex;
			validateSelect(selectRaza, selectedRaza, 'raza');
		});
		
		
		// Get Raza en función a la especie Registra
		
		selectEspecie.change(function(e) {
			selectedEspecie = e.target.selectedIndex;
			
			$.getJSON('listaRaza', {"especie":selectedEspecie}, function(data) {
				
				// Limpia las razas de la especie anterior
				
				if($('#select_raza > option').hasClass("option__raza")) {
					$("#select_raza > option.option__raza").remove();
					selectedRaza = 0;
				}
				
				$.each( data, function( index, value) {
					let option = document.createElement('option');
					option.value = value.codigo_raza_mascota;
					option.text = value.nombre_raza_mascota;
					option.className = "option__raza";
					selectRaza.append(option);
				});
			});
			
			// Validar selects de Especie y Raza
			
			validateSelect(selectEspecie, selectedEspecie, 'especie');
			validateSelect(selectRaza, selectedRaza, 'raza');
		});
		
		$('#id_form_registra').bootstrapValidator({
			message: 'El valor no es válido',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				nombre_mascota: {
					selector: '#id_nombre',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						},
						stringLength: {
							min: 3,
							max: 40,
							message: 'El nombre debe contener entre 3 a 40 caracteres'
						},
					}
				},
				fecha_nacimiento_mascota: {
					selector: '#id_fecha_nacimiento',
					validators: {
						notEmpty: {
							message: '* Este campo es obligatorio'
						}
					}
				},   
				codigo_identificacion_mascota: {
				    selector: '#id_identificacion',
				    validators: {
				        notEmpty: {
				            message: '* Este campo es obligatorio'
				        },
				        stringLength: {
				            min: 8,
				            max: 8,
				            message: 'El identificador debe contener 8 caracteres'
				        }
				    }
				},
				codigo_cartilla_sanitaria: {
				    selector: '#id_sanitaria',
				    validators: {
				        notEmpty: {
				            message: '* Este campo es obligatorio'
				        },
				        stringLength: {
				            min: 8,
				            max: 8,
				            message: 'El código sanitario debe contener 8 caracteres'
				        }
				    }
				}
				
			}
		});
		
		// Registrar mascota
		
		btnRegister.click(function() {
			var validator = $('#id_form_registra').data('bootstrapValidator');
			validator.validate();
			
			// Validar selects
			validateSelect(selectEspecie, selectedEspecie, 'especie');
			validateSelect(selectRaza, selectedRaza, 'raza');
			validateSelect(selectSexo, selectedSexo, 'sexo');
			validateSelect(selectColor, selectedColor, 'color');
			
			if(selectedEspecie > 0 && selectedColor > 0 && selectedSexo > 0 && selectedRaza > 0 && validator.isValid()) {
				
				var form = $("#id_form_registra").serialize();
				var data = new FormData($("#id_form_registra")[0]);
				
				$.ajax({
					type: 'POST',
					data: data,
					enctype: 'multipart/form-data',
					url: '/registraMascotaConFoto',
					processData: false,
					contentType: false,
					cache: false,
					success: function(data) {
						$('#id_modal_RegistraMascota').modal("hide");
						mostrarMensaje(data.MENSAJE);
						limpiar();
						validator.resetForm();
						mascotasContainer.empty();
						generarListaMascotas();
					},
					error: function() {
						mostrarMensaje(MSG_ERROR);
					}
				});
				
				
				
			}
		});
		
		const mascotasContainer = $("#mascotas_container");
		const codigoPropietario = $("#id_propietario").val();
		
		function calcularEdad(fechaString) {
			var hoy = new Date();
			hoy.setHours(0,0,0,0);
		    var fechaNacimiento = new Date(fechaString);
		    var tiempo = (hoy.getTime() - fechaNacimiento.getTime()) / 1000;
		    var anio = Math.abs(Math.floor((tiempo/(60 * 60 * 24))/365));
		    var mes = Math.abs(Math.floor(tiempo/(60 * 60 * 24 * 7 * 4)));

		    // Menos de 0 meses no existe
	    	if(mes < 0 || fechaNacimiento > hoy) {
	    		return "Fecha inválida";
	    	} else {
	    		// 0 meses a 11 meses
			    if(mes >= 0 && mes < 12) {
			    	if(mes === 1) {
			    		return mes + " mes";
			    	} else {
			    		return mes + " meses";
			    	}
			    } else {	    	
			    	// 12 meses : 1 año
			    	if(mes === 12) {
			    		return anio + " año";
			    	}
			    	
		    		var mesesSobrantes = mes % 12;
			    	
			    	// 1 año con x meses y menos de 2 años
			    	if(mes > 12 && mes < 24) {
			    		// 1 año y 1 mes
			    		if(mesesSobrantes === 1) {
		    				return anio + " año y " + mesesSobrantes + " mes";
		    			} else {
		    				// 1 año y varios meses
		    				return anio + " año y " + mesesSobrantes + " meses";
		    			}
			    	} else if (mes >= 24) {
			    		if(mesesSobrantes === 1) {
			    			return anio + " años y " + mesesSobrantes + " mes";
			    		} else {
			    			return anio + " años y " + mesesSobrantes + " meses";
			    		}
			    	}
			    }
	    	}
		}
		
		function generarListaMascotas() {
			$.getJSON("listaMascotaPorPropietario", {"codigo_propietario": codigoPropietario}, function(lista) {
				
				if(lista.length > 0) {
					$.each( lista, function(index, mascota) {
					 
						
						const divContainer = document.createElement('div');
						//divContainer.className = "col-6 col-md-3 mb-2 mt-2";
						divContainer.className = "col-8 col-md-3 text-center col-dcar";
						
						
						const divCARD = document.createElement('div');
						divCARD.className = "example-1 card";
						
						
						const cardPet = document.createElement('div');
						//cardPet.className = "card pet__card h-100";
						cardPet.className = "wrapper2 imagenCard"; 
						
						
						const imgPet = document.createElement('img');
						
						if(mascota.foto_mascota.length > 0) {
							imgPet.src = "data:image/png;base64," + mascota.foto_mascota; 
						} else {
							imgPet.src = "../../images/noimage.png";
						}
						
						imgPet.className = "card-img-top pet__card--cover";
						imgPet.alt = "Pet image";
						
						const cardBody = document.createElement('div');
						//cardBody.className = "card-body";
						cardBody.className = "example-1 card";
						
						
						const cardBodyTitle = document.createElement('h5');
						cardBodyTitle.className = "card-title bold text-center";
						cardBodyTitle.innerHTML = mascota.nombre_mascota;
						
						const cardBodyText = document.createElement('p');
						cardBodyText.className = "card-text text-center";
						
						const edadCalculada = calcularEdad(mascota.fecha_nacimiento_mascota);

						cardBodyText.innerHTML = edadCalculada;
						
// 						const cardFooter = document.createElement('div');
// 						cardFooter.className = "card-footer text-center";
						
// 						const cardFooterContent = document.createElement('small');
// 						cardFooterContent.className = "text-muted text-center d-lg-flex justify-content-center";
						
// 						const btnHistorial = document.createElement('button');
// 						btnHistorial.className = "btn btn-secondary col-12 col-lg-6";
// 						btnHistorial.innerHTML = "Historial"
						
					/*  const btnCita = document.createElement('button');
						btnCita.className = "btn btn-primary btn-generic col-12 col-lg-6";
						btnCita.innerHTML = "Cita" */
						
						// Input invisible con el código de la mascota
						const inputCodigoMascota = document.createElement('input');
						inputCodigoMascota.innerHTML = mascota.codigo_mascota;
						inputCodigoMascota.className = "d-none";
						
						// Anidar elementos creados para formar Card de Mascota
						
						cardBody.append(cardBodyTitle, cardBodyText);
						
// 						cardFooterContent.append(/*inputCodigoMascota, btnHistorial*/ /*, btnCita*/);
// 						cardFooter.append(cardFooterContent);
						//cardFooter
						
						cardPet.append(imgPet, cardBody);
						divCARD.append(cardPet)
						divContainer.append(divCARD);
						mascotasContainer.append(divContainer);
					});
					
				} else {
					const divContainer = document.createElement('div');
					divContainer.className = "col-12 mb-2 mt-2";
					
					const title = document.createElement('h4');
					title.className = "text-center";
					title.innerHTML = "Todavía no tienes mascotas registradas";
					
					divContainer.append(title);
					mascotasContainer.append(divContainer);
				}

			});
		}
		
		generarListaMascotas();
		
		function limpiar() {
			$('#id_foto').val('');
			$('#id_nombre').val('');
			$('#select_especie')[0].selectedIndex = 0;
			$('#select_raza')[0].selectedIndex = 0;
			$('#select_color')[0].selectedIndex = 0;
			$('#select_sexo')[0].selectedIndex = 0;
			$('#id_fecha_nacimiento').val('');
			$('#id_identificacion').val('');
			$('#id_sanitaria').val('');
			selectedEspecie = 0;
			selectedRaza = 0;
			selectedColor = 0;
			selectedSexo = 0;
		}
		
	});
	</script>
</body>
</html>