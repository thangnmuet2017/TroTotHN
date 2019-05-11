<?php 
	if(isset($_GET['action'])) {
		session_unset();
		header('Location: https://trotothn.000webhostapp.com/index.php');
	}
?>
