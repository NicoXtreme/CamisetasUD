
<%-- 
    Document   : Principal
    Created on : 3 dic. 2022, 14:46:28
    Author     : nicox
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
  <nav class="navbar navbar-dark bg-primary">
    <div class="container"> <a class="navbar-brand d-flex" href="#">
        <i class="fa d-inline fa-circle fa-2x"></i>
        <b class="ml-2 mt-1">¡Bienvenido "Nombre Usuario" - Eres "Cliente o Artista"!</b>
      </a>
      <div class="row">
        <div class="col-md-12"><a class="navbar-brand" href="#"><i class="fa d-inline fa-lg fa-bomb"></i>Tu carrito</a></div>
      </div>
    </div>
  </nav>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="text-center mx-auto col-md-8">
          <h1 class="mb-3">Disfruta de comprar en CAMISETAS UD</h1>
          <p class="lead">Aqui tienes una muestra de nuestra gran colección.</p>
          <ul class="nav nav-tabs">
            <li class="nav-item" style=""> <a href="" class="active nav-link" data-toggle="tab" data-target="#tabone">Color</a> </li>
            <li class="nav-item"> <a class="nav-link" href="" data-toggle="tab" data-target="#tabtwo">Talla</a> </li>
            <li class="nav-item"> <a href="" class="nav-link" data-toggle="tab" data-target="#tabthree">Estilo</a> </li>
          </ul>
          <div class="tab-content mt-2">
            <div class="tab-pane fade show active" id="tabone" role="tabpanel">
              <div class="row">
                <div class="col-md-1" style=""><a class="btn text-white" href="#" style="background:#e52d27" target="_blank"></a></div>
                <div class="col-md-1" style=""><a class="btn text-white" href="#" style="background:#e52d27" target="_blank"></a></div>
                <div class="col-md-1" style=""><a class="btn text-white" href="#" style="background:#e52d27" target="_blank"></a></div>
                <div class="col-md-1" style=""><a class="btn text-white" href="#" style="background:#e52d27" target="_blank"></a></div>
                <div class="col-md-1" style=""><a class="btn text-white" href="#" style="background:#e52d27" target="_blank"></a></div>
                <div class="col-md-1" style=""><a class="btn text-white" href="#" style="background:#e52d27" target="_blank"></a></div>
                <div class="col-md-1" style=""><a class="btn text-white" href="#" style="background:#e52d27" target="_blank"></a></div>
                <div class="col-md-1"><a class="btn text-white" href="#" style="background: rgb(229, 45, 39);" target="_blank"></a></div>
                <div class="col-md-1"><a class="btn text-white" href="#" style="background: rgb(229, 45, 39);" target="_blank"></a></div>
                <div class="col-md-1"><a class="btn text-white" href="#" style="background: rgb(229, 45, 39);" target="_blank"></a></div>
                <div class="col-md-1"><a class="btn text-white" href="#" style="background: rgb(229, 45, 39);" target="_blank"></a></div>
                <div class="col-md-1"><a class="btn text-white" href="#" style="background: rgb(229, 45, 39);" target="_blank"></a></div>
              </div>
            </div>
            <div class="tab-pane fade" id="tabtwo" role="tabpanel">
              <div class="row">
                <div class="col-md-3"><a class="btn btn-outline-primary mt-1" href="#">S</a></div>
                <div class="col-md-3"><a class="btn btn-outline-primary mt-1" href="#">M</a></div>
                <div class="col-md-3"><a class="btn btn-outline-primary mt-1" href="#">L</a></div>
                <div class="col-md-3"><a class="btn btn-outline-primary mt-1" href="#">XL</a></div>
              </div>
            </div>
            <div class="tab-pane fade" id="tabthree" role="tabpanel">
              <div class="row">
                <div class="col-md-3"><a class="btn btn-outline-primary mt-1" href="#">Arte</a></div>
                <div class="col-md-3"><a class="btn btn-outline-primary mt-1" href="#">Deportivas</a></div>
                <div class="col-md-3"><a class="btn btn-outline-primary mt-1" href="#">Videojuegos</a></div>
                <div class="col-md-3"><a class="btn btn-outline-primary mt-1" href="#">Superheroes</a></div>
              </div>
            </div>
            <div class="tab-pane fade" id="tabfour" role="tabpanel">
              <p class="">Camisetas de tipo Videojuegos</p>
            </div>
          </div>
        </div>
      </div>
      <div class="container mt-2">
          <div class="row">
              <c:forEach var="cam" items="${camisetas}">
                  <div class="col-sm-4">
                  <div class="card">
                      <div class="card-header">
                          <label>${cam.getNombreCamiseta()}</label>
                      </div>
                      <div class="card-body">
                          <i>$${cam.getPrecio()}</i>
                          <img src="ControladorIMG?idCamiseta=${cam.getIdCamiseta()}" width="200" height="180">
                      </div>
                      <div class="card-footer text-center">
                          <label>${cam.getDescripcion()}</label>
                          <div>
                              <a href="" class="btn btn-outline-info">Agregar a Carrito</a>
                              <a href="" class="btn btn-danger">Comprar</a>
                          </div>
                      </div>
                    </div>              
                </div>
              </c:forEach>
              
      </div>
        
    </div>
  </div>
  <div class="py-3 bg-secondary text-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center d-md-flex align-items-center"> <i class="d-block fa fa-stop-circle fa-2x mr-md-5 text-primary"></i>
          <ul class="nav mx-md-auto d-flex justify-content-center">
            <li class="nav-item"> <a class="nav-link active text-light" href="Principal.jsp">Pagina Principal</a> </li>
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
</body>

</html>
