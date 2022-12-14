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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="css/theme.css">
  <link rel="stylesheet" href="theme.css">
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
          <li class="nav-item"> <a class="nav-link" href="Principal.jsp">INICIO</a> </li>
          <li class="nav-item"> <a class="nav-link" href="SubirCamiseta.jsp">SUBE TU CAMISETA</a> </li>
        </ul>
        <ul class="navbar-nav">
          <li class="nav-item"> <a class="nav-link" href="index.jsp">Iniciar Sesión</a> </li>
          <li class="nav-item text-light"> <a class="nav-link text-light" href="Register.jsp">Registrate</a> </li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="py-5 text-center">
    <div class="container">
      <div class="row">
        <div class="mx-auto col-lg-6 col-10" style="">
          <h1>Sube tus Estampas</h1>
          <p class="mb-3">Busca las estampas como archivo png desde tu computadora.</p>
          <form class="text-left" action="Guardar" method="POST" enctype="multipart/form-data">
            <input type="file" name="fileFoto" class="btn btn-primary"></input>
              <div class="form-group"> <label for="form16">Nombre de tu camiseta</label> <input type="text" name="txtshirtname" class="form-control" id="form16" placeholder="Nombre de tu camiseta"> </div>
              <div class="form-group"> <label for="form17">Descripcion de tu camiseta</label> <input type="text" name="txtshirtdesc" class="form-control" id="form17" placeholder="Descripcion de tu camiseta"> </div>
            <div class="form-group"> <label for="form17">Precio de tu camiseta</label> <input type="text" name="txtshirtprice" class="form-control" id="form17" placeholder="Precio de tu camiseta"> </div>
            <div class="form-group"> <label for="form17">Stock</label> <input type="text" name="txtshirtstock" class="form-control" id="form17" placeholder="Stock"> </div>
            <div class="form-group"> <label for="form17">Color</label>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="color" value="cliente">Blanca <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="color" value="cliente">Negra <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="color" value="cliente">Amarilla <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="color" value="cliente">Azul <label class="form-check-label"></label>
              </div>
            </div>
            <div class="form-group"> <label for="form17">Talla</label>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="size" value="cliente">S <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="size" value="cliente">M <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="size" value="cliente">L <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="size" value="cliente">XL <label class="form-check-label"></label>
              </div>
            </div>
            <div class="form-group"> <label for="form17">Estilo</label>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="tag" value="cliente">Arte <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="tag" value="cliente">Deportiva <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="tag" value="cliente">Videojuegos <label class="form-check-label"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" name="tag" value="cliente">Superheroes <label class="form-check-label"></label>
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
