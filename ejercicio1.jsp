<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ejercicio 1 - Etiqueta c:out</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css/estilo.css" rel="stylesheet">
</head>
<body class="pagina">
<header class="encabezado">
  <div class="container d-flex align-items-center justify-content-between">
    <a href="index.jsp" class="logo text-decoration-none"> &lt;/&gt; Guía JSTL</a>
    <a href="index.jsp" class="btn btn-outline-light btn-sm boton-inicio">Inicio</a>
  </div>
</header>
<main class="contenido">
 <div class="container">
  <div class="text-center mb-4">
   <h1 class="titulo">Ejercicio 1: Etiqueta c:out</h1>
   <p class="subtitulo">Ingresa tres valores numéricos para calcular su suma usando JSTL.</p>
  </div>
  <div class="row justify-content-center">
   <div class="col-12 col-md-8 col-lg-6">
    <form action="resultadoC1.jsp" method="post" class="tarjeta-formulario">
     <div class="mb-3"><label for="num1" class="form-label">Número 1</label><input class="form-control" type="number" step="any" id="num1" name="num1" required></div>
     <div class="mb-3"><label for="num2" class="form-label">Número 2</label><input class="form-control" type="number" step="any" id="num2" name="num2" required></div>
     <div class="mb-4"><label for="num3" class="form-label">Número 3</label><input class="form-control" type="number" step="any" id="num3" name="num3" required></div>
     <div class="d-flex gap-2"><button type="submit" class="btn btn-primary flex-grow-1">Calcular suma</button><a href="index.jsp" class="btn btn-outline-secondary">Cancelar</a></div>
    </form>
   </div>
  </div>
 </div>
</main>
</body>
</html>
