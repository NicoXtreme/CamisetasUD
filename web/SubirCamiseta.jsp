<%-- 
    Document   : SubirCamiseta
    Created on : 13 dic. 2022, 12:20:13
    Author     : NicoXtreme
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="css/theme.css">
  <link rel="stylesheet" href="theme.css">
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
  <div class="py-5 text-center">
    <div class="container">
      <div class="row">
        <div class="mx-auto col-lg-6 col-10" style="">
          <h1>Sube tus Estampas</h1>
          <p class="mb-3">Busca las estampas como archivo png desde tu computadora.</p>
          <form action="Guardar" method="POST" enctype="multipart/form-data" class="text-left">
            <input type="file" name="fileFoto" class="btn btn-primary">
              <div class="form-group"> <label for="form16">Nombre de tu camiseta</label> <input type="text" name="txtshirtname" class="form-control" id="form16" placeholder="Nombre de tu camiseta"> </div>
              <div class="form-group"> <label for="form17">Descripcion de tu camiseta</label> <input type="text" name="txtshirtdesc" class="form-control" id="form17" placeholder="Descripcion de tu camiseta"> </div>
            <div class="form-group"> <label for="form17">Precio de tu camiseta</label> <input type="text" name="txtshirtprice" class="form-control" id="form17" placeholder="Precio de tu camiseta"> </div>
            <div class="form-group"> <label for="form17">Stock</label> <input type="text" name="txtshirtstock" class="form-control" id="form17" placeholder="Stock"> </div>
            <div class="form-group"> <label for="form17">Color</label>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="color" value="blanco">Blanca <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="color" value="negro">Negra <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="color" value="amarillo">Amarilla <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="color" value="azul">Azul <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="color" value="rojo">Rojo <label class="form-check-label"></label>
              </div>
            </div>
            <div class="form-group"> <label for="form17">Talla</label>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="size" value="S">S <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="size" value="M">M <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="size" value="L">L <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="size" value="XL">XL <label class="form-check-label"></label>
              </div>
            </div>
            <div class="form-group"> <label for="form17">Estilo</label>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="tag" value="Arte">Arte <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="tag" value="Deportiva">Deportiva <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="tag" value="Videojuegos">Videojuegos <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="tag" value="Superheroes">Superheroes <label class="form-check-label"></label>
              </div>
            </div>
            <button type="submit" name="accion" value="Guardar" class="btn btn-primary">Guardar</button>
          </form>
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
</body>

</html>
