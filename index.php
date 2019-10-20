<?php 
	$conn = new mysqli('localhost', 'root', '', 'proyecto');
    // Check connection
    if ($conn->connect_error) {
        die("Database Connection failed: " . $conn->connect_error);
    }
    date_default_timezone_set('America/Mexico_City');
     $d = date("Y-m-d");
    $t = date("H:i:s");

    if(!empty($_GET['tarjeta']) && !empty($_GET['val']))
    {
    	$tarjeta = $_GET['tarjeta'];
    	$val = $_GET['val'];
 
	    $sql = "INSERT INTO entrada(Fecha, Id_Tarjeta, id_corto) VALUES ('".$d." ".$t."','".$tarjeta."','".$val."')";
 
		if (mysqli_query($conn, $sql)) {
		    echo "OK";
		} else {
		    echo "Error: " . $sql . "<br>" . $conn->error;
		}
	}
	$conn->close();
 ?>