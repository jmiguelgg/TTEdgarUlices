<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<!-- Estilos css -->
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/labelStyle.css">
	<link rel="stylesheet" type="text/css" href="css/ClassStyle.css">
	<link rel="stylesheet" type="text/css" href="css/IdStyle.css">
	<!-- Estilos css -->

	<!-- JavaScript -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/general.js"></script>
	<script type="text/javascript" src="js/carga-cabecera.js"></script>
	<!-- JavaScript -->
	<title>SocialWriters</title>
</head>
<body>
	<header>
		<div id="cabecera"></div>
	</header>
	<div class="menu-filtros" id="menu-lista-filtros"></div>
	<div class="contenedor">
		<div class="contenido">
			<div class="fondoFormato">
				<h1>Autores seguidos</h1>
				<div class="contenedor-libros">
					<c:forEach items="${listaContactos}" var="contacto">
						<a href="BuscarInformacionFormularios?metodoDeBusqueda=4&esAjax=false&direccion=PerfilUsuario.jsp&nickName=${contacto.nickName}">
							<div class="libro">
								<div class="portadaLibro">
									<c:choose>
										<c:when test="${contacto.imgPerfil != null}">
											<img alt="Imagen de perfil" src="data:image/jpeg;base64,${contacto.imgPerfil}" class="img-circulo">
										</c:when>
										<c:otherwise>
											<img src="img/default.jpg" class="img-circulo" alt="default">
										</c:otherwise>
									</c:choose>
								</div>
								<div class="descripcionLibro">
									<p><c:out value="${contacto.nickName}"></c:out></p>
									<table>
										<tbody>
											<tr>
												<c:forEach var="activa" begin="1" end="5">
													<c:choose>
														<c:when test="${activa <= contacto.estrellas}">
															<td><span class="icon-star-empty estrellaActiva centrar" id="estrella${activa}"></span></td>
														</c:when>
														<c:otherwise>
															<td><span class="icon-star-empty estrella centrar" id="estrella${activa}"></span></td>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</a>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>