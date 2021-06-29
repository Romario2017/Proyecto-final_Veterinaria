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
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/simditor.css" />

<!-- Menu y Header requieren jQuery al inicio -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<title>Tienda | Dogtor</title>
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
				<div id="dashboardContent"
					class="col-12 col-md-10 dashboard__content mt-lg-1 mt-5 menu__transition mx-auto">
					<div
						class="content__body background__light__white menu__transition">
						<div class="row justify-content-center">
							<div class="content__body__title col-4">
								<p class="font__title title__color font__semibold">Resumen</p>
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
										aria-expanded="false"> <i data-feather="shopping-cart"></i>
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
									<img src="./images/avatar/random-1.svg" alt="Avatar"
										class="profile__image">
								</div>
							</div>

							<div class="content__statistics row mt-4">
								<div class="col-12 col-md-6 mt-2 mb-2">
									<div
										class="card__light d-flex justify-content-around flex-column align-items-center align-items-md-start" id="proximacita">
<!-- 										<p class="card__light__title">Próxima Cita</p> -->
<!-- 										<p -->
<!-- 											class="font__title title__color font__semibold m-0 titlecardPrecio">12/06/2021</p> -->
<!-- 										<p -->
<!-- 											class="font__title title__color font__semibold m-0 titlecardPrecio">3:40PM -->
<!-- 											a 4:50PM</p> -->
									</div>
								</div>
								<div class="col-12 col-md-6 mt-2 mb-2">
									<div
										class="card__light d-flex justify-content-around flex-column align-items-center align-items-md-start" id="ultimopedido">
<!-- 										<p class="card__light__title">Último Pedido</p> -->
<!-- 										<p -->
<!-- 											class="font__title title__color font__semibold m-0 titlecardPrecio">29/05/2021</p> -->
<!-- 										<p -->
<!-- 											class="font__title title__color font__semibold m-0 titlecardPrecio">En -->
<!-- 											curso</p> -->
									</div>
								</div>
							</div>

							<div class="content__alert row">
								<div class="col-12 mt-4 mb-2">
									<div class="card__light">

										<p class="font__subtitle title__color font__semibold"></p>

										<section id="specialists" class="mt-12 mb-12 pt-12 bg-clean">
											<div class="">
												<div
													class="row pt-8 pb-8 align-items-center justify-content-center">
													<div class="col-md-8">
														<h3 class="text-start title__color mb-2">Productos
															Ofertados</h3>
														<h5 class="text-start subtitle__color mb-5 font__regular">Todo
															lo necesario para tu mascota</h5>
													</div>
													<div class="col-md-4">

														<h5 class="text-start subtitle__color mb-5 font__regular">
															<div
																class="options__search d-flex flex-row align-items-center d-none d-md-flex mx-2">
																<input type="text" name="filtro_producto"
																	id="filtro_producto" class="input__search title__color"
																	placeholder="Buscar...">
																<svg xmlns="http://www.w3.org/2000/svg" width="24"
																	height="24" viewBox="0 0 24 24" fill="none"
																	stroke="currentColor" stroke-width="2"
																	stroke-linecap="round" stroke-linejoin="round"
																	class="feather feather-search icon__light">
																	<circle cx="11" cy="11" r="8"></circle>
																	<line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
															</div>
														</h5>
													</div>
													<div id="lstProduct" class="row"></div>
												</div>


											</div>

										</section>
									</div>
									<div class="card__light__body row"></div>
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
	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
	<!-- Custom JS -->
	<script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/createNewErrorMessage.js"></script>
	<script type="text/javascript" src="js/menuDashboard.js"></script>

	<script type="text/javascript">
		// Load icons
		
		feather.replace();
	</script>
	<script type="text/javascript" src="js/generalMethods.js"></script>
	<script type="text/javascript" src="js/clienteTienda.js"></script>

</body>
</html>