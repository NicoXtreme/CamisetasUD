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
  <div class="py-5 text-center text-white" style="background-image: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75)), url(&quot;https://static.pingendo.com/cover-bubble-dark.svg&quot;); background-position: center center, center center; background-size: cover, cover; background-repeat: repeat, repeat;">
      <form class="container" action="Guardar" method="POST" enctype="multipart/form-data" >
      <div class="row">
        <div class="col-md-6 mx-auto">
          <h1 class="mb-3">Sube tus Estampas</h1>
          <p class="lead mb-0">Busca las estampas como archivo png desde tu computadora</p> <input type="file" name="filefoto" class="btn btn-primary m-3" href="#" style=""></input>
          <div class="form-group"> <label for="form16">Nombre de tu camiseta</label> <input type="text" name="txtshirtname" class="form-control" id="form16" placeholder="Nombre de tu camiseta"> </div>
          <div class="form-group"> <label for="form16">Descripción de tu camiseta</label> <input type="text" name="txtshirtdesc" class="form-control" id="form16" placeholder="Una breve descripción"> </div>
          <div class="form-group"> <label for="form16">Precio de tu camiseta</label> <input type="number" name="txtshirtprice" class="form-control" id="form16" placeholder="000.00"> </div>
          <div class="form-group"> <label for="form16">Stock</label> <input type="number" name="txtshirtstock" class="form-control" id="form16" placeholder="Stock disponible"> </div>
        </div>
        <div class="col-md-6">
          <div class="form-group"> <label for="form16">Color</label>
            <div class="form-check">
              <input type="radio" class="form-check-input" id="radio1" name="color" value="blanca">Blanca <label class="form-check-label" for="radio1"></label>
            </div>
            <div class="form-check">
              <input type="radio" class="form-check-input" id="radio2" name="color" value="negra">Negra <label class="form-check-label" for="radio2"></label>
            </div>
            <div class="form-check">
              <input type="radio" class="form-check-input" id="radio3" name="color" value="amarilla">Amarilla <label class="form-check-label" for="radio3"></label>
            </div>
            <div class="form-check">
              <input type="radio" class="form-check-input" id="radio4" name="color" value="azul">Azul <label class="form-check-label" for="radio4"></label>
            </div>
            <div class="form-check">
              <input type="radio" class="form-check-input" id="radio5" name="color" value="roja">Roja <label class="form-check-label" for="radio5"></label>
            </div>
          </div>
          <div class="form-group"> <label for="form16">Talla</label>
            <div class="form-check">
              <input type="radio" class="form-check-input" id="radio1" name="talla" value="S">S <label class="form-check-label" for="radio1"></label>
            </div>
            <div class="form-check">
              <input type="radio" class="form-check-input" id="radio2" name="talla" value="M">M <label class="form-check-label" for="radio2"></label>
            </div>
            <div class="form-check">
              <input type="radio" class="form-check-input" id="radio3" name="talla" value="L">L <label class="form-check-label" for="radio3"></label>
            </div>
            <div class="form-check">
              <input type="radio" class="form-check-input" id="radio4" name="talla" value="XL">XL <label class="form-check-label" for="radio4"></label>
            </div>
          </div>
          <div class="form-group"> <label for="form16">Estilo</label>
            <div class="form-check">
              <input type="radio" class="form-check-input" id="radio1" name="estilo" value="arte">Arte <label class="form-check-label" for="radio1"></label>
            </div>
            <div class="form-check">
              <input type="radio" class="form-check-input" id="radio2" name="estilo" value="deportiva">Deportiva <label class="form-check-label" for="radio2"></label>
            </div>
            <div class="form-check">
              <input type="radio" class="form-check-input" id="radio3" name="estilo" value="videojuegos">Videojuegos <label class="form-check-label" for="radio3"></label>
            </div>
            <div class="form-check">
              <input type="radio" class="form-check-input" id="radio4" name="estilo" value="superheroes">Superheroes <label class="form-check-label" for="radio4"></label>
            </div>
          </div>
            <button type="submit" name="accion" value="guardar" class="btn btn-primary mt-3">Guardar</button>  
        </div>
      </div>
    </form>
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
