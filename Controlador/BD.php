<?php 
	

	class BD
	{
		public function conexionPDO(){
		try {
			$options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, 
						PDO::ATTR_EMULATE_PREPARES => false];
    		$pdo = new PDO('mysql:host=localhost;dbname=rfid', 'root', '', $options);
    		return $pdo;
		} catch (PDOException $e) {
    		echo 'Falló la conexión: ' . $e->getMessage();
    		die();
			}
		}
	}


 ?>