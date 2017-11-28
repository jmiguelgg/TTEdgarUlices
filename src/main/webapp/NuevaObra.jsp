<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
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
<script type="text/javascript" src="js/buscarInformacionAjax.js"></script>
<script type="text/javascript" src="js/validaciones.js"></script>
<script type="text/javascript" src="js/fechas.js"></script>
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
			<form action="CrearObra" class="centrar" method="POST">
				<div class="fondoFormato">
					<div style="height: 350px">
						<div class="izquierda" id="obra-portada">
							<img src="img/pd.png" alt="default">
						</div>
						<div class="derecha" id="nueva-obra">
							<ul>
								<li class="form-espacio"><input type="text" name="titulo"
									id="titulo" class="form-input-text" placeholder="<spring:message code="label.titulo" />"
									minlength="1" maxlength="50" required></li>

								<li class="form-espacio"><select class="form-input-lista"
									name="idioma" id="idioma" required>
										<option value=""><spring:message code="label.idioma" /></option>
										<option value="1"><spring:message code="label.espa�ol" /></option>
										<option value="2"><spring:message code="label.ingles" /></option>
								</select></li>
								<li class="form-espacio"><h3><spring:message code="label.genero" /></h3></li>
								<li>
									<table style="width: 100%" class="generos-form">
										<tr>
											<td><input type="checkbox" name="1" value="1">
												<spring:message code="label.comedia" /><br></td>
											<td><input type="checkbox" name="2" value="2">
												<spring:message code="label.cuento" /><br></td>
											<td><input type="checkbox" name="3" value="3">
												<spring:message code="label.drama" /><br></td>
										</tr>

										<tr>
											<td><input type="checkbox" name="4" value="4">
												<spring:message code="label.fantasia" /><br></td>
											<td><input type="checkbox" name="5"
												value="5"> <spring:message code="label.sci-fi" /><br></td>
											<td><input type="checkbox" name="6" value="6">
												<spring:message code="label.historico" /><br></td>
										</tr>

										<tr>
											<td><input type="checkbox" name="7" value="7">
												<spring:message code="label.misterio" /><br></td>
											<td><input type="checkbox" name="8" value="8">
												<spring:message code="label.suspenso" /><br></td>
											<td><input type="checkbox" name="9" value="9">
												<spring:message code="label.terror" /><br></td>
										</tr>

										<tr>
											<td><input type="checkbox" name="10" value="10">
												<spring:message code="label.tragedia" /><br></td>
											<td><input type="checkbox" name="11" value="11">
												<spring:message code="label.romance" /><br></td>
											<td><input type="checkbox" name="12" value="12">
												<spring:message code="label.poesia" /><br></td>
										</tr>
									</table>
								</li>


							</ul>
						</div>
					</div>
					<div class="contenido45 formato-texto">
						<h3><spring:message code="label.sinopsis" /></h3>
						<textarea name="sinopsis" id="sinopsis" class="form-input-text" cols="50" rows="5" wrap="hard" maxlength="250">
						</textarea>
					</div>
					<div class="contenedor-boton">
						<input type="submit" class="boton-formulario centrar" id="itemSubmit" value="<spring:message code="label.crearo" />">
					</div>
				</div>
				</form>
			</div>
		</div>
	
</body>
</html>