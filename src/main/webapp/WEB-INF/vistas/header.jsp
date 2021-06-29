<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<<style>
.marker.active {
    color: #ffffff;
    border-left: 0.5rem solid #4B6BF0;
    background: #4B6BF0;
    border-radius: 0px 11px 13px 0px;
}

	.align-items-md-start{
	background: #6888F9;
	box-shadow: 10px 10px 5px -4px rgba(0,0,0,0.33);
-webkit-box-shadow: 10px 10px 5px -4px rgba(0,0,0,0.33);
-moz-box-shadow: 10px 10px 5px -4px rgba(0,0,0,0.33);

-webkit-transition:all .9s ease; /* Safari y Chrome */
-moz-transition:all .9s ease; /* Firefox */
-o-transition:all .9s ease; /* IE 9 */
-ms-transition:all .9s ease; /* Opera */
	}
	
	.align-items-md-start:hover  {
-webkit-transform:scale(1.06);
-moz-transform:scale(1.06);
-ms-transform:scale(1.06);
-o-transform:scale(1.06);
transform:scale(1.06);
}
	.card__light__title{
	color: #f8feff !important;
	}
	.titlecardPrecio{
	color: #f9f8ff;
	}
	
.textPrograma {
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
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
.imagenCard {
	background-size: cover;
	background-size: 100% 100%;
	background-repeat: no-repeat;
}
</style>
<c:if test="${requestScope['javax.servlet.forward.servlet_path'] == '/'}">
	<!-- Landing Menu -->
    <nav class="navbar navbar-expand-lg navbar-light background__light__white fixed-top py-3">
        <div class="container">
            <a class="primary__color font__bolder font__max link__light" href="./">Dogtor</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
	            		<li class="nav-item mx-lg-2">
	                        <a class="nav-link link-menu subtitle__color scroll" href="#hero">Inicio</a>
	                    </li>
	                    <li class="nav-item mx-lg-2">
	                        <a class="nav-link link-menu subtitle__color scroll" href="#specialties">Especialidades</a>
	                    </li>
	                    <li class="nav-item mx-lg-2">
	                        <a class="nav-link link-menu subtitle__color scroll" href="#specialists">Especialistas</a>
	                    </li>
	                    <li class="nav-item mx-lg-2">
	                        <a class="nav-link link-menu subtitle__color scroll" href="#benefits">Beneficios</a>
	                    </li>
	                    <li class="nav-item mx-lg-2">
	                        <a class="nav-link link-menu subtitle__color scroll" href="tienda">Tienda</a>
	                    </li>
	                     <c:if test="${sessionScope.objRoles != null}">
					            <li class="nav-item">
			            			<a class="nav-link link-menu text-secondary-color" href="home">Panel</a>
			            		</li>
		                 </c:if>
                </ul>
                <div class="d-flex">
                    
                    <c:if test="${sessionScope.objMenus == null}">
                    	<a class="btn btn__clean" href="login">Iniciar Sesión</a>
	            	</c:if>
	            	
	            	<c:if test="${sessionScope.objMenus != null}">
	            		<a class="btn btn__clean" href="logout">Cerrar Sesión</a>
	            	</c:if>
                </div>
            </div>
        </div>
    </nav>
</c:if>

<c:if test="${requestScope['javax.servlet.forward.servlet_path'] == '/login' || requestScope['javax.servlet.forward.servlet_path'] == '/nuevaCuenta' || requestScope['javax.servlet.forward.servlet_path'] == '/logout'}">
	<!-- Sign In & Register -->
    <nav class="navbar navbar-expand-lg navbar-light background__light__white fixed-top py-3">
        <div class="container">
            <a class="primary__color font__bolder font__max link__light" href="./">Dogtor</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                   <c:if test="${sessionScope.objRoles != null}">
		            <li class="nav-item">
            			<a class="nav-link link-menu text-secondary-color" href="home">Panel</a>
            		</li>
                   </c:if>
                </ul>
                <div class="d-flex">
                    
                    <c:if test="${sessionScope.objMenus == null}">
                    	<a class="btn btn__clean" href="login">Iniciar Sesión</a>
	            	</c:if>
	            	
	            	<c:if test="${sessionScope.objMenus != null}">
	            		<a class="btn btn__clean" href="logout">Cerrar Sesión</a>
	            	</c:if>
                </div>
            </div>

        </div>
    </nav>
</c:if>

<c:if test="${sessionScope.objMenus != null && requestScope['javax.servlet.forward.servlet_path'] != '/'}">
	<!-- Dashboard (Active Session) -->
	<!-- Menu on XS, SM, and MD -->
	<nav class="d-lg-none navbar navbar-expand-lg navbar-light fixed-top background__dark">
	    <div class="container-fluid">
	        <a class="font__max primary__color link__light font__bolder" href="./">Dogtor</a>
	        <button id="menuHamburger" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	            <span id="menuIconBtn"><i data-feather="menu"></i></span>
	        </button>
	    </div>
	</nav>

	<!-- Menu content on XS, SM, and MD -->
	<nav class="menu__sidebar collapse navbar-collapse d-lg-none" id="navbarNav">
	    <div class="container-fluid mt-5">
	        <ul class="navbar-nav">
	       
	        	<c:forEach var="x" items="${sessionScope.objMenus}">
					<li class="nav-item">
					    <a class="nav-link link-menu text-secondary-color" href="${x.ruta_enlace}">
					${x.descripcion_enlace}
						</a>
					</li>
				</c:forEach>
	        </ul>
	    </div>
	</nav>
</c:if>
<script type="text/javascript">
const codigoPropietario = ${sessionScope.objUsuario.codigo_usuario}
</script>

