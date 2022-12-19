<%-- 
    Document   : Carrito.jsp
    Created on : 17 dic. 2022, 18:26:22
    Author     : NicoXtreme
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="css/theme.css">
</head>

<body>
  <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container"> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar12">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbar12"> <a class="navbar-brand d-none d-md-block" href="#">
          <i class="fa d-inline fa-lg fa-circle"></i>
          <b> CAMISETAS UD</b>
        </a>
        <ul class="navbar-nav mx-auto">
          <li class="nav-item"> <a class="nav-link" href="Controlador?accion=Inicio">INICIO</a> </li>
          <li class="nav-item"> <a class="nav-link" href="SubirCamiseta.jsp">SUBE TU CAMISETA</a> </li>
        </ul>
        <ul class="navbar-nav">
          <li class="nav-item"> <a class="nav-link" href="index.jsp">Iniciar Sesión</a> </li>
          <li class="nav-item text-light"> <a class="nav-link text-light" href="Register.jsp">Registrate</a> </li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container mt-4 mb-4">
      <h3>Tu Carrito</h3>
      <div class="row">
          <div class="col-sm-8">
              <table class="table table-hover">
                  <thead>
                      <tr>
                          <th>ITEM</th>
                          <th>IMAGEN</th>
                          <th>TALLA</th>
                          <th>PRECIO</th>
                          <th>CANTIDAD</th>
                          <th>SUBTOTAL</th>
                          <th>ACCION</th>
                      </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="car" items="${carrito}">
                      <tr>
                          <td>${car.getItem()}</td>
                          <td>
                              <img src="ControladorIMG?idCamiseta=${car.getIdProducto()}" width="100" height="100"/>
                          </td>
                          <td>${car.getTallas()}</td>
                          <td>${car.getPrecioCompra()}</td>
                          <td>${car.getCantidad()}</td>
                          <td>${car.getSubTotal()}</td>
                          <td>
                              <input type="hidden" id="idcam" value="${car.getIdProducto()}">
                              <a href="Controlador?accion=Delete&idcam=${car.getItem()}" id="btnDelete"  >Eliminar</a>
                          </td>
                      </tr>    
                    </c:forEach>
                  </tbody>
              </table>
          </div>
          <div class="col-sm-4">
              <div class="card">
                  <div class="card-header">
                      <h3>Generar Compra</h3>
                  </div>
                  <div class="card-body">
                      <label>Subtotal:</label>
                      <input type="text" value="$.${totalPagar}" readonly="" class="form-control">
                      <label>Descuento:</label>
                      <input type="text" readonly="" class="form-control">
                      <label>Total Pagar:</label>
                      <input type="text" value="$.${totalPagar}" readonly="" class="form-control">
                  </div>
                  <div class="card-footer">
                      <a href="Controlador?accion=GenerarCompra" class="btn btn-info btn-block">Realizar Pago</a>
                  </div>
              </div>
          </div>
      </div>
  </div>    
  </div>
  <div class="py-3 bg-secondary text-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center d-md-flex align-items-center"> <i class="d-block fa fa-stop-circle fa-2x mr-md-5 text-primary"></i>
          <ul class="nav mx-md-auto d-flex justify-content-center">
            <li class="nav-item"> <a class="nav-link active text-light" href="Controlador?accion=Inicio">Pagina Principal</a> </li>
            <li class="nav-item"> <a class="nav-link text-light" href="SobreNosotros.jsp">Sobre Nosotros</a> </li>
          </ul>
          <div class="row">
            <div class="col-md-12 d-flex align-items-center justify-content-md-between justify-content-center my-2"> <a href="#">
                <i class="d-block fa fa-facebook-official text-muted fa-lg mx-2"></i>
              </a> <a href="#">
                <i class="d-block fa fa-instagram text-muted fa-lg mx-2"></i>
              </a> <a href="#">
                <i class="d-block fa fa-twitter text-muted fa-lg ml-2"></i>
              </a> </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 text-center">
          <p class="mt-2 mb-0">© 2022 Camisetas UD. Universidad Distrital Francisco José de Caldas</p>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script src="js/funciones.js" type="text/javascript"></script>
</body>

</html>