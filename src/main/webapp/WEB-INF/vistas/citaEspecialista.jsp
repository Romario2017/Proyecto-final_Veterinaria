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
	<title>Cita | Dogtor</title>
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
<!--                                     <p class="card__light__title">Próxima Cita</p> -->
<!--                                     <p class="font__title title__color font__semibold m-0">12/06/2021</p> -->
<!--                                     <p class="font__title title__color font__semibold m-0">3:40PM a 4:50PM</p> -->
                                </div>
                            </div>
                            <div class="col-12 col-md-6 mt-2 mb-2">
                                <div class="card__light d-flex justify-content-around flex-column align-items-center align-items-md-start" id="ultimopedido">
<!--                                     <p class="card__light__title">Último Pedido</p> -->
<!--                                     <p class="font__title title__color font__semibold m-0">29/05/2021</p> -->
<!--                                     <p class="font__title title__color font__semibold m-0">En curso</p> -->
                                </div>
                            </div>
                        </div>
                        
                        <div class="content__alert row">
                            <div class="col-12 mt-4 mb-2">
                                <div class="card__light">
                                   
                                    <div class="card__light__body row">
                                    	<form id="id_form_elimina" action="eliminaCita">
											<input type="text" id="id_elimina" name="codigo_cita" class="d-none">
											<input type="text" id="id_estado_elimina" name="codigo_estado_cita" class="d-none">
										</form>
                                                                   
                                        <div class="col-12 table-responsive">
                                            <table id="id_table_Reserva" class="font__min display responsive no-footer text-center table table-borderless dataTable">
                                                <thead class="background__title">
                                                    <tr>
														<th>#</th>
														<th>Fecha</th>
														<th>Servicio</th>
														<th>Cliente</th>
														<th>Mascota</th>
														<th>Estado</th>
														<th>Acción</th>
                                                    </tr>
                                                </thead>
                                                <tbody></tbody>
                                            </table>
                                        </div>
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
    	
    	<!-- Modal de Registro de Reserva de Cita -->
   		<div class="modal fade p-0" id="id_modal_RegistraReserva">
    		<div class="modal-dialog modal-xl">
    			<div class="modal-content">
    				<div class="modal-header">
    					<div class="col-12 justify-content-center align-items-center d-flex">
    						<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Registro de Reserva de Cita</b></h1>
    					</div>
    				</div>
    				<div class="modal-body">
    					<div class="container">
    						 <div class="row mt-2">
					            <div class="col-12 justify-content-center align-items-center d-flex">
					                <main class="col-12 col-md-11">
					                    <form id="id_form_registraCita">
					                    
					                    <input type="text" id="id_codigo_propietario" name="codigo_propietario" class="d-none">
					                    
					                    <div class="form-group row">
					                    	<div class="col-12 mb-3">
					                    		<p class="font__subtitle title__color font__semibold">Información de Mascota</p>
					                    	</div>
					                    </div>
					                   <div class="form-group row">
					                    <div class="col-12 col-md-8 mb-8">
										<div class="form-group row align-items-center mx-auto">
											<div class="col-12 col-md-3 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_mascota" class="form-control" id="id_codigo_mascota" readonly>
													<label for="id_codigo_mascota">Código</label>
												</div>
											</div>
											<div class="col-12 col-md-5 mb-3">
												<div class="form-floating">
													<input type="text" name="nombre_mascota" class="form-control" id="id_nombre_mascota" readonly>
													<label for="id_nombre_mascota">Nombre de Mascota</label>
												</div>
											</div>
											
											<div class="col-12 col-md-4 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_color_mascota" class="form-control" id="id_color_mascota" readonly>
													<label for="id_color_mascota">Color</label>
												</div>
											</div>
										</div>
										
										<div class="form-group row align-items-center mx-auto">
											<div class="col-12 col-md-3 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_sexo_mascota" class="form-control" id="id_sexo_mascota" readonly>
													<label for="id_sexo_mascota">Sexo</label>
												</div>
											</div>
											<div class="col-12 col-md-3 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_especie_mascota" class="form-control" id="id_especie_mascota" readonly>
													<label for="id_especie_mascota">Especie</label>
												</div>
											</div>
											<div class="col-12 col-md-3 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_raza_mascota" class="form-control" id="id_raza_mascota" readonly>
													<label for="id_raza_mascota">Raza</label>
												</div>
											</div>
											
										</div>
										</div>
										<div class="col-12 col-md-4 mb-4">
										<div id="divImagenAnimal">
										</div>
										</div>
										</div>
										
										<div class="form-group row">
					                    	<div class="col-12 my-2">
					                    		<p class="font__subtitle title__color font__semibold">Información de Servicio</p>
					                    	</div>
					                    </div>
					                    
					                    <div class="form-group row align-items-center mx-auto">
											<div class="col-12 col-md-2 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_servicio" class="form-control" id="id_codigo_servicio" readonly>
													<label for="id_codigo_servicio">Código</label>
												</div>
											</div>
											
											<div class="col-12 col-md-4 mb-3">
												<div class="form-floating">
													<input type="text" name="nombre_servicio" class="form-control" id="id_nombre_servicio" readonly>
													<label for="id_nombre_servicio">Nombre de Servicio</label>
												</div>
											</div>
											
											<div class="col-12 col-md-3 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_tipo_servicio" class="form-control" id="id_tipo_servicio" readonly>
													<label for="id_tipo_servicio">Tipo</label>
												</div>
											</div>
											<div class="col-12 col-md-3 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_especialidad" class="form-control" id="id_especialidad_servicio" readonly>
													<label for="id_especialidad_servicio">Especialidad</label>
												</div>
											</div>
										</div>
										
										<div class="form-group row align-items-center mx-auto">
											<div class="col-12 col-md-2 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_dia_semana" class="form-control" id="id_dia_servicio" readonly>
													<label for="id_dia_servicio">Día</label>
												</div>
											</div>
<!-- 											<div class="col-12 col-md-3 mb-3"> -->
<!-- 												<div class="form-floating" style="display:none"> -->
<!-- 													<input type="date" name="fecha_programada_cita" class="form-control" id="id_fecha_cita"> -->
<!-- 													<label for="id_fecha_cita">Fecha</label> -->
<!-- 												</div> -->
<!-- 											</div> -->
											<div class="col-12 col-md-7 mb-6">
												<div class="form-floating">
													<input type="text" name="descripcion_servicio" class="form-control" id="id_descripcion_servicio" readonly>
													<label for="id_descripcion_servicio">Descripción de Servicio</label>
												</div>
											</div>
										</div>
										
										<div class="form-group row align-items-center mx-auto">
											<div class="col-12 col-md-5 mb-3">
												<div class="form-floating">
													<input type="text" name="codigo_especialista" class="form-control" id="id_especialista_servicio" readonly>
													<label for="id_especialista_servicio">Especialista</label>
												</div>
											</div>
											<div class="col-12 col-md-2 mb-3">
												<div class="form-floating">
													<input type="time" name="inicio_turno_servicio" class="form-control" id="id_hora_inicio_servicio" readonly>
													<label for="id_hora_inicio_servicio">Desde las</label>
												</div>
											</div>
											<div class="col-12 col-md-2 mb-3">
												<div class="form-floating">
													<input type="time" name="fin_turno_servicio" class="form-control" id="id_hora_fin_servicio" readonly>
													<label for="id_hora_fin_servicio">Hasta las</label>
												</div>
											</div>
											
										</div>
										
										<div class="form-group row align-items-center mx-auto">
											<div class="col-12">
												<div class="form-floating">
													<input type="text" name="motivo_cita" class="form-control" id="id_motivo_cita" readonly>
													<label for="id_motivo_cita">Descripción de síntomas</label>
												</div>
											</div>
										</div>
										<div class="form-group row">
					                    	<div class="col-12 my-2">
					                    		<p class="font__subtitle title__color font__semibold">Diagnostico</p>
					                    	</div>
					                    </div>
					                    
					                    <div class="form-group row align-items-center mx-auto">
										<div class="col-12">
												<div class="form-floating">
													<input type="text" name="motivo_cita" class="form-control" id="id_diagnostico_cita">
													<label for="id_motivo_cita">Diagnostico</label>
												</div>
											</div>
											</div>
											
										
										
					                    
					                      <button class="w-100 btn btn-lg btn-primary btn__primary my-3" id="botonRegistrarHistorial" type="button" onclick="registrarHistorialClinico()">Registrar</button>
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
    	
    	<!-- Modal de Búsqueda de Mascotas -->
		<div class="modal fade p-0" id="id_modal_BuscarMascota">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<div class="col-12 justify-content-center align-items-center d-flex">
							<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Buscar Mascotas</b></h1>
						</div>
					</div>
					
					<div class="modal-body">
						<div class="container">
							<div class="row mt-2">
								<div class="col-12 justify-content-center align-items-center d-flex">
									<main class="col-12">
										<form id="id_form_buscaMascota">
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="col-9 mb-3">
													<div class="form-floating"><input type="text" id="id_mascota_filtro" name="filtro_nombre_mascota" class="form-control">
														<label for="id_mascota_filtro">Nombre de Mascota</label>
													</div>
												</div>
												<div class="col-3 mb-3">
													<button class="btn btn-primary" type="button" id="filtra_mascota"><i data-feather="search"></i>Buscar</button>
												</div>
											</div>
											
											<div class="row justify-content-center align-items-center mx-auto">
												<div class="col-12 table-responsive">
													<table id="id_table_mascota" class="font__min display responsive no-footer text-center table table-borderless dataTable">
														<thead class="background__title">
															<tr>
																<th>#</th>
																<th>Nombre</th>
																<th>Fecha de Nacimiento</th>
																<th>Acción</th>
															</tr>
														</thead>
														<tbody></tbody>
													</table>
												</div>
											</div>
										</form>
									</main>
								</div>
							</div>
						</div>
					</div>
					
					<div class="modal-footer justify-content-end align-items-center">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Modal de Búsqueda de Servicios -->
		<div class="modal fade p-0" id="id_modal_BuscarServicio">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<div class="col-12 justify-content-center align-items-center d-flex">
							<h1 class="h3 mb-2 mt-2 fw-normal text-center"><b>Buscar Servicios</b></h1>
						</div>
					</div>
					
					<div class="modal-body">
						<div class="container">
							<div class="row mt-2">
								<div class="col-12 justify-content-center align-items-center d-flex">
									<main class="col-12">
										<form id="id_form_buscaServicio">
											<div class="form-group row justify-content-center align-items-center mx-auto">
												<div class="col-12 col-md-4 mb-3">
											  		<div class="form-floating">
								                      	<select class="form-select" id="select_tipo_servicio" name="codigo_tipo_servicio" aria-label="Default select example">
															<option selected value="0">Seleccione Tipo</option>
														</select>
														<label for="select_tipo_servicio">Tipo</label>
						                      		</div>
											  	</div>
											  	<div class="col-12 col-md-5 mb-3">
												  	<div class="form-floating">
								                      	<select class="form-select" id="select_especialidad_servicio" name="codigo_especialidad" aria-label="Default select example">
															<option selected value="0">Seleccione Especialidad</option>
														</select>
														<label for="select_especialidad_servicio">Especialidad</label>
							                    	</div>
										  		</div>
												<div class="col-12 col-md-3 mb-3 text-center">
													<button class="btn btn-primary" type="button" id="filtra_servicio"><i data-feather="search"></i>Buscar</button>
												</div>
											</div>
											
											<div class="row justify-content-center align-items-center mx-auto">
												<div class="col-12 table-responsive">
													<table id="id_table_servicio" class="font__min display responsive no-footer text-center table table-borderless dataTable">
														<thead class="background__title">
															<tr>
																<th>#</th>
																<th>Especialista</th>
																<th>Precio</th>
																<th>Día</th>
																<th>Horario</th>
																<th>Acción</th>
															</tr>
														</thead>
														<tbody></tbody>
													</table>
												</div>
											</div>
										</form>
									</main>
								</div>
							</div>
						</div>
					</div>
					
					<div class="modal-footer justify-content-end align-items-center">
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
	<script type="text/javascript" src="js/citaEspecialista.js"></script>

	<script type="text/javascript" src="js/generalMethods.js"></script>
</body>
</html>