<%-- 
    Document   : SubirSuccess
    Created on : 13 dic. 2022, 16:23:12
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
  <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
    <div class="container"> <button class="navbar-toggler navbar-toggler-right border-0 p-0" type="button" data-toggle="collapse" data-target="#navbar14">
        <p class="navbar-brand mb-0 text-white">
          <i class="fa d-inline fa-lg fa-stop-circle"></i> BRAND </p>
      </button>
      <div class="collapse navbar-collapse" id="navbar14">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item"> <a class="nav-link" href="Controlador?accion=Inicio">Pagina Principal</a> </li>
          <li class="nav-item"> <a class="nav-link" href="SobreNosotros.jsp">Sobre Nosotros</a> </li>
        </ul>
        <p class="d-none d-md-block lead mb-0  text-white"> <i class="fa d-inline fa-lg fa-stop-circle"></i> <b>CAMISETAS UD</b></p>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item mx-1"> <a class="nav-link" href="#">
              <i class="fa fa-github fa-fw fa-lg"></i>
            </a> </li>
          <li class="nav-item mx-1"> <a class="nav-link" href="#">
              <i class="fa fa-gitlab fa-fw fa-lg"></i>
            </a> </li>
          <li class="nav-item mx-1"> <a class="nav-link" href="#">
              <i class="fa fa-bitbucket fa-fw fa-lg"></i>
            </a> </li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="py-5 text-center text-md-right h-75" style="background-image: url(&quot;https://static.pingendo.com/cover-bubble-dark.svg&quot;); background-position: right bottom; background-size: cover; background-repeat: repeat; background-attachment: fixed;">
    <div class="container">
      <div class="row">
        <div class="p-5 mx-auto mx-md-0 ml-md-auto col-10 col-md-9">
          <h3 class="display-3">Felicidades!</h3>
          <p class="mb-3 lead">Has subido tu producto exitosamente en Camisetas UD</p>
          <form class="form-inline d-flex justify-content-end">
            <div class="input-group">
                <div class="input-group-append"> <button class="btn btn-primary" type="button" role="link" onclick="window.location='index.jsp'">Inicia Sesión</button> </div>
            </div>
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