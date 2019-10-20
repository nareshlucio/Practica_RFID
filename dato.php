<?php 
	$result = new mysqli('localhost', 'root', '', 'rfid'); 
   		if (!$result)
     		throw new Exception('<h1>No se Pudo Conectar con la BD</h1>');
   		else
     		return $result;

     	$tarjeta= $_GET['tarjeta'];
     	$fecha= "sadasda";
     	if(mysqli_query($result, "INSERT INTO Acceso( Id_Tarjeta, Fecha) VALUES ('".$tarjeta."','".$fecha."'')"))
     	{
     		echo "Registro Exitoso";
     	}

 ?>