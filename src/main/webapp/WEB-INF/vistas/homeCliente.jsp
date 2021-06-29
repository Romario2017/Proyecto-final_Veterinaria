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
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/simditor.css" />
	<!-- Menu y Header requieren jQuery al inicio -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
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
<!--                                     <p class="font__title title__color font__semibold m-0 titlecardPrecio" id="proximacita"> </p> -->
<!--                                     <p class="font__title title__color font__semibold m-0 titlecardPrecio" >3:40PM a 4:50PM</p> -->
                                </div>
                            </div>
                            <div class="col-12 col-md-6 mt-2 mb-2">
                                <div class="card__light d-flex justify-content-around flex-column align-items-center align-items-md-start" id="ultimopedido">
<!--                                     <p class="card__light__title">Último Pedido</p> -->
<!--                                     <p class="font__title title__color font__semibold m-0 titlecardPrecio">29/05/2021</p> -->
<!--                                     <p class="font__title title__color font__semibold m-0 titlecardPrecio">En curso</p> -->
                                </div>
                            </div>
                        </div>
                        
                        <div class="content__alert row">
                            <div class="col-12 mt-4 mb-2">
                                <div class="card__light">
                                    <div class="card__light__header d-flex justify-content-between my-3">
                                        <p class="font__subtitle title__color font__semibold"></p>
                                        <!-- <button class="btn btn__primary" type="button" data-toggle="modal" id="id_btnModal_RegistraMascota" data-target="#id_modal_RegistraMascota">
                                        	<i data-feather="plus"></i>
                                        	Nuevo
                                        </button> -->
                                    </div>
                                    <div class="card__light__body row">
                                    	
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
	    
    
	</script>
</body>
</html>