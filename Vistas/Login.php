<?php 

 ?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="assets/css/FontAwesome/css/all.css">
	<title>Login The Dragon Games</title>
</head>
<body class="bg-primary" style="background-image: url(assets/Imgs/Fondo.gif); background-position: top; background-attachment: fixed; background-size: cover; background-repeat: no-repeat;">
<nav class="navbar navbar-top navbar-horizontal navbar-expand-md navbar-dark">
	<div class="container px-4">
   <?php 
      if (isset($mensError)) {
        echo "<div class='alert alert-warning' role='alert'>";
        echo "<span class='alert-inner--icon'><i class='fas fa-exclamation-triangle'></i></i></span>";
        echo "<span class='alert-inner--text'><strong>Warning!</strong> ".$mensError." </span>";
        echo "</div>";
      }
    ?>
	</div>
</nav>
 <div class="header bg-gradient-primary py-5 py-lg-8">
 	<div class="container">
 	  <div class="header-body text-center mb-7">
 	  	<div class="row justify-content-center">
 	  		<div class="col-lg-5 col-md-6">
 	  			<h1 class="text-light">Inicie Sesion</h1>
 	  		</div>
 	  	</div>
 	  </div>
 	</div>
 </div>
 <div class="container mt--8 pb-5">
   <div class="row justify-content-center">
     <div class="col-lg-5 col-md-7">
       <div class="card bg-light shadow border-0">
         <div class="card-header bg-transparent pb-5 text-center">
           <img src="assets/Imgs/Dragon1.png" class="navbar-brand-img" width="150px" height="150px">
         </div>
         <div class="card-body px-lg-5 py-lg-3">
         	<div class="text-center text-muted mb-3">
              <small>¡Bienvenido!</small>
            </div>
            <form role="form" action="index.php" method="POST">
              <div class="form-group mb-3">
                <div class="input-group input-group-alternative">
                  <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-user-tie"></i></span>
                  </div>
                    <input class="form-control" placeholder="Usuario" type="text" name="correo" autocomplete="off" data-toggle="tooltip" data-placement="top" title="Escriba su correo">
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fas fa-lock"></i></span>
                    </div>
                    <input class="form-control" placeholder="Contraseña" type="password" name="contraseña" data-toggle="tooltip" data-placement="bottom" title="Escriba su contraseña" autocomplete>
                  </div>
                </div>
                <div class="text-center">
                  <button type="submit" value="submit" name="inicio" class="btn btn-success my-4" data-toggle="tooltip" data-placement="bottom" title="Entrar">
                  Iniciar Sesion
                  </button>
                </div>
              </form>
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-6">
              <small class="text-light">No tienes cuenta? </small><a href="Vistas/Registro.php" class="text-light"><small><strong>!Registrate¡</strong></small></a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <audio src="assets/Audio/FondoZelda.mp3" hidden="" autoplay="true" loop="true" id="audio" preload="auto"></audio>
    <script type="text/javascript">
      var a = document.getElementById("audio");
      a.volume = 0.2;
    </script>
</body>
</html>