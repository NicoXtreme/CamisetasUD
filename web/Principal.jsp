
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

  <!-- NUEVA BARRA DE OPCIONES DE RUBRICAS O MENÚS -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?accion=Inicio">Inicio </a>
      </li>
      <li class="nav-item">
        <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="SubirCamiseta.jsp">Sube tu camiseta</a>
      </li>
       <li class="nav-item">
        <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="index.jsp">Para iniciar sesión</a>
       </li>
    </ul>
      <!-- BOTON DE CERRAR SESIÓN -->
        <div class="dropdown">
            
            <button style="border: none" class="btn btn-outline-light secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                ${user.getApodo()}
            </button>
            <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#">
                    <img src="https://cdn.icon-icons.com/icons2/2483/PNG/512/user_icon_149851.png" alt="60" width="60">
                </a>
                <a class="dropdown-item" href="#">${user.getApodo()}</a>
                <a class="dropdown-item" href="#">${user.getCorreo()}</a>
                <div class="dropdown-divider"></div>
                <form accion="Validar" method="POST">
                    <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>                    
                </form>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbar12"> <a class="navbar-brand d-none d-md-block" href="#">
          <i class="fa d-inline fa-lg fa-circle"></i>
          <b> CAMISETAS UD</b>
        </a>
  </div>
</nav>
  <nav class="navbar navbar-dark bg-primary">
    <div class="container"> <a class="navbar-brand d-flex" href="#">
        <i class="fa d-inline fa-circle fa-2x"></i>
        <b class="ml-2 mt-1">¡Le damos la bienvenida a ${user.getApodo()} nuestro ${user.getTipo()} favorito!</b>
      </a>
      <div class="row">
          <div class="col-md-12"><a class="navbar-brand" href="Controlador?accion=Carrito"><i class="fa d-inline fa-lg fa-shopping-cart"><label style="color: orange">(${contador})</label></i>Tu carrito</a></div>
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
      <div class="container mt-2 mb-4">
          <div class="row">
              <c:forEach var="cam" items="${camisetas}">
                  <div class="col-sm-4">
                  <div class="card">
                      <div class="card-header">
                          <label>${cam.getNombre()} </label> ||
                          <label>${cam.getTalla()}</label> ||
                          <label>${cam.getColor()}</label> ||
                          <label>${cam.getEtiqueta()}</label>
                      </div>
                      
                      <div class="card-body">
                          <i>$${cam.getPrecio()}</i>
                          <img src="ControladorIMG?idCamiseta=${cam.getIdCamiseta()}" width="200" height="180">
                      </div>
                      <div class="card-footer text-center">
                          <label>${cam.getDescripcion()}</label>
                          <div>
                              <a href="Controlador?accion=AgregarCarrito&idCamiseta=${cam.getIdCamiseta()}" class="btn btn-outline-info">Agregar a Carrito</a>
                              <a href="Controlador?accion=Comprar&idCamiseta=${cam.getIdCamiseta()}" class="btn btn-danger">Comprar</a>
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
</body>

</html>
