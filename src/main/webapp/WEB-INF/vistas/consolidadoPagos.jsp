<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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

<link rel="stylesheet" href="css/bootstrapValidator.css" />
<link rel="stylesheet" href="css/dashboard.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/tarjeta.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/simditor.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<!-- Menu y Header requieren jQuery al inicio -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/simple-notify@0.5.1/dist/simple-notify.min.css" />

<!-- JS -->
<script src="https://cdn.jsdelivr.net/npm/simple-notify@0.5.1/dist/simple-notify.min.js"></script>

<style>
td, th {
	vertical-align: middle;
}

.text-right {
	text-align: right;
}
</style>
<title>Home | Dogtor</title>
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
				<div id="dashboardContent"
					class="col-12 col-md-10 dashboard__content mt-lg-1 mt-5 menu__transition mx-auto">
					<div
						class="content__body background__light__white menu__transition">
						<div class="row justify-content-center">
							<div class="content__body__title col-4">
								<p class="font__title title__color font__semibold">Consolidado
									de compras</p>
							</div>
							<div
								class="content__body__options col-8 d-flex flex-row justify-content-end align-items-top">
								<div
									class="options__search d-flex flex-row align-items-center d-none d-md-flex mx-2">
									<input type="text" name="filtro_nombre_servicio"
										id="id_nombre_filtro" class="input__search title__color"
										placeholder="Buscar..."> <i data-feather="search"
										class="icon__light"></i>
								</div>
								<div class="options__filter d-none d-lg-flex mx-2">
									<select name="select_time" id="id_select_time"
										class="select__time form-select">
										<option value="0">Este mes</option>
									</select>
								</div>
								<div id="btnMessage"
									class="options__message d-flex align-items-center d-none d-lg-flex mx-2">
									<i data-feather="message-square"></i>
								</div>
								<div id="btnCart"
									class="options__message d-flex align-items-center d-none d-lg-flex mx-2">


									<a class="nav-link dropdown-toggle" id="navbarLandings"
										data-bs-toggle="dropdown" href="#" aria-haspopup="true"
										aria-expanded="false"> <svg
											xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-shopping-cart">
											<circle cx="9" cy="21" r="1"></circle>
											<circle cx="20" cy="21" r="1"></circle>
											<path
												d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
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

														<div class="col-6"
															style="background: #6888F9; text-align: center; padding-top: 10px;">
															<a href="/consolidadoPagos" class="irCarrito"> Ir al
																carrito <svg xmlns="http://www.w3.org/2000/svg"
																	width="24" height="24" viewBox="0 0 24 24" fill="none"
																	stroke="currentColor" stroke-width="2"
																	stroke-linecap="round" stroke-linejoin="round"
																	class="feather feather-shopping-cart">
																	<circle cx="9" cy="21" r="1"></circle>
																	<circle cx="20" cy="21" r="1"></circle>
																	<path
																		d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
															</a>
														</div>
														<div class="col-6" style="background: #6888F9">
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
									<img src="./images/avatar/random-1.svg" alt="Avatar"
										class="profile__image">
								</div>
							</div>

							<!--                          <div class="content__statistics row mt-4"> -->
							<!--                             <div class="col-12 col-md-6 mt-2 mb-2"> -->
							<!--                                 <div class="card__light d-flex justify-content-around flex-column align-items-center align-items-md-start"> -->
							<!--                                     <p class="card__light__title">Próxima Cita</p> -->
							<!--                                     <p class="font__title title__color font__semibold m-0 titlecardPrecio">12/06/2021</p> -->
							<!--                                     <p class="font__title title__color font__semibold m-0 titlecardPrecio" >3:40PM a 4:50PM</p> -->
							<!--                                 </div> -->
							<!--                             </div> -->
							<!--                             <div class="col-12 col-md-6 mt-2 mb-2"> -->
							<!--                                 <div class="card__light d-flex justify-content-around flex-column align-items-center align-items-md-start"> -->
							<!--                                     <p class="card__light__title">Último Pedido</p> -->
							<!--                                     <p class="font__title title__color font__semibold m-0 titlecardPrecio">29/05/2021</p> -->
							<!--                                     <p class="font__title title__color font__semibold m-0 titlecardPrecio">En curso</p> -->
							<!--                                 </div> -->
							<!--                             </div> -->
							<!--                         </div> -->

							<!--                         <div class="content__alert row"> -->
							<!--                             <div class="col-12 mt-4 mb-2"> -->
							<!--                                 <div class="card__light"> -->
							<!--                                     <div class="card__light__header d-flex justify-content-between my-3"> -->
							<!--                                         <p class="font__subtitle title__color font__semibold"></p> -->

							<!--                                     </div> -->
							<!--                                     <div class="card__light__body row"> -->

							<!--                                     </div> -->
							<!--                                 </div> -->
							<!--                             </div> -->
							<!--                         </div> -->

							<div class="content__alert row">
								<div class="col-8 mt-4 mb-2 col-sm-12 col-md-8">
									<div class="card__light">
										<div
											class="card__light__header d-flex justify-content-between my-3">
											<p class="font__subtitle title__color font__semibold">Productos</p>
											<!--                                         <button class="btn btn__primary" type="button" data-toggle="modal" id="id_btnModal_RegistraProducto" data-target="#id_modal_RegistraProducto"> -->
											<!--                                         	<i data-feather="plus"></i>Nuevo</button> -->
										</div>
										<div class="card__light__body row">
											<!--                                     	<form id="id_form_elimina" action="eliminaProducto"> -->
											<!-- 											<input type="text" id="id_elimina" name="codigo_producto" class="d-none"> -->
											<!-- 											<input type="text" id="id_visibilidad_elimina" name="codigo_visibilidad" class="d-none"> -->
											<!-- 										</form> -->
											<div class="col-12 table-responsive">
												<table id="id_table"
													class="font__min display responsive no-footer text-center table table-borderless dataTable table-image">
													<thead class="background__title">
														<tr>
															<th>#</th>
															<th>Fotos</th>
															<th>Nombre</th>
															<th>Descripción</th>
															<th>Precio</th>
															<th></th>
															<!-- 														<th>Stock</th> -->
															<!-- 														<th>Serie</th> -->

															<!-- 														<th>Marca</th> -->
															<!-- 														<th>Categoría</th> -->
															<!-- 														<th>Proveedor</th> -->
															<!--<th>Estado</th>-->
															<!-- 														<th>Opciones</th> -->
														</tr>
													</thead>
													<tbody id="tableConsolidado">


													</tbody>
												</table>
											</div>

										</div>

									</div>



								</div>

								<div class="col-4 mt-4 mb-2 col-sm-12 col-md-4">
									<div class="card__light">
										<div class="card__light__body row">
											<div class="col-8 col-sm-6 col-md-4">
												<p>SubTotal:</p>
											</div>
											<div class="col-4 col-sm-6 col-md-8 text-right">
												<p id="tableSubTotal">S/ 710.00</p>
											</div>
											<div class="col-8 col-sm-6 col-md-4">
												<p>Envío:</p>
											</div>
											<div class="col-4  col-sm-6 col-md-8 text-right">
												<p id="tableEnvio">S/ 110.00</p>
											</div>
											<div class="col-8 col-sm-6 col-md-4">
												<p>IGV:</p>
											</div>
											<div class="col-4  col-sm-6 col-md-8 text-right">
												<p id="tableIgv">S/ 1.50</p>
											</div>
											<div class="col-8 col-sm-6 col-md-4">
												<p>TOTAL:</p>
											</div>
											<div class="col-4  col-sm-6 col-md-8 text-right">
												<p id="tableTotal">S/ 1200.00</p>
											</div>
										</div>
									</div>
									<br>
									<div class="card__light">
										<div class="card__light__body row">
											<form id="id_form_tarjeta" class="row" action="javascript:finalizarCompra();">
												<div class="col-8 col-sm-6 col-md-8">
													<p for="id_proveedor">Proveedor:</p>
													<input type="text" class="form-control" id="nombre_proveedor"
														name="nombre_proveedor">
												</div>
												<div class="col-4 col-sm-6 col-md-4 text-left">
													<p>CVV</p>
													<input type="text" class="form-control cc-cvc-input" name="cvv"
														id="cvv" maxlength="3">
												</div>
												<div class="col-8 col-sm-6 col-md-12">
													<p>Numero de Tarjeta:</p>
													<input type="text" class="form-control cc-number-input" name="cardNumber"
														id="cardNumber" maxlength="19">
												</div>
												<div class="col-4  col-sm-6 col-md-12 text-left">
													<label>Fecha Expiración</label>
													<div class="input-group d-flex flex-row" id="expiration-date">
														<div class="col-12 col-sm-4 col-md-5">
															<select class="form-select" name="mes" id="mes">
																<option value="01">Enero</option>
																<option value="02">Febrero</option>
																<option value="03">Marzo</option>
																<option value="04">Abril</option>
																<option value="05">Mayo</option>
																<option value="06">Junio</option>
																<option value="07">Julio</option>
																<option value="08">Agosto</option>
																<option value="09">Septiember</option>
																<option value="10">Octubre</option>
																<option value="11">Noviembre</option>
																<option value="12">Deciembre</option>
															</select> 
														</div>
														<div class="col-12 col-sm-2 col-md-2"></div>
														<div class="col-12 col-sm-4 col-md-5">
															<select class="form-select"  name="anio" id="anio">
																<option value="16">2016</option>
																<option value="17">2017</option>
																<option value="18">2018</option>
																<option value="19">2019</option>
																<option value="20">2020</option>
																<option value="21">2021</option>
																<option value="22">2022</option>
																<option value="23">2023</option>
																<option value="24">2024</option>
																<option value="25">2025</option>
															</select>
														</div>
													
														<div class="col-12 col-sm-12 col-md-12"> 	
															<br>		
															<div id="credit_cards" class="d-flex flex-row">
																<div class="col-12 col-sm-4 col-md-4 text-center" ><img src="images/tarjetaimg/visa.jpg" id="visa"></div>
																<div class="col-12 col-sm-4 col-md-4 text-center"><img
																	src="images/tarjetaimg/mastercard.jpg" id="mastercard"></div>
																<div class="col-12 col-sm-4 col-md-4 text-center"><img src="images/tarjetaimg/amex.jpg" id="amex"></div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-4  col-sm-6 col-md-12 text-center">
												<label> &nbsp;</label>
													<br>
													<button class="btn btn__primary" type="submit"
														data-toggle="modal" id="btnFinalizarCompra">
														<i data-feather="dollar-sign"></i> Finalizar Compra
													</button>
												</div>
											</form>
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

	<div class="container-fluid"></div>

	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
		crossorigin="anonymous"></script>

	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>
	
	<!-- Custom JS -->
	
	<script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/createNewErrorMessage.js"></script>
	<script type="text/javascript" src="js/menuDashboard.js"></script>
	<script type="text/javascript" src="js/generalMethods.js"></script>
	<script type="text/javascript" src="js/consolidadoPedidos.js"></script>
	<script src="js/jquery.payform.min.js" charset="utf-8"></script>


	<script type="text/javascript">
		// Load icons
		feather.replace();
		
		$( document ).ready(function() {
			$("#id_form_tarjeta").validate({
				rules: {
					nombre_proveedor: "required",
					cvv: {
						required:true,
						minlength: 3
					} ,
					cardNumber: {
						required:true,
						minlength: 19
					},
					mes: "required",
					anio: "required"
				},
				 messages: {
					nombre_proveedor: "Debe ingresar un Nombre de Proveedor",
					cvv: {
						required:"Debe ingresar CVV",
						minlength:"Minimo de 3 digitos"
					},
					cardNumber: {
						required:"Debe ingresar Numero de Tarjeta",
						minlength: "Numero de Tarjeta Invalido"
					},
					mes: "Debe seleccionar el Mes",
					anio: "Debe seleccionar el Año"
				}
			})
		});
		
		console.log("saliio de la validaciones: -> go registrar en tb_transaccion")
		
		
	</script>


</body>
</html>