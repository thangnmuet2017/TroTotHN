<?php
	//kết nối đến CSDL
	$conn = mysqli_connect("localhost", "root", "", "tro_tot_hn_db");
	if (!$conn) { //kiểm tra xem đã kết nối đến CSDL được chưa
		die("Connection failed: " . mysqli_connect_error());
	}
	mysqli_set_charset($conn, 'UTF8');
?>