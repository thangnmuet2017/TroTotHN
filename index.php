<?php
    session_start();
?>

<!-- Include file xử lý thêm dữ liệu vào csdl khi đăng tin -->
<?php 
	include('controller/uploadNewRoom.php');
?>

<!-- Include file xử lý tác vụ đăng nhập -->
<?php 
	include('controller/logIn.php');
?>

<!-- Include file xử lý tác vụ đăng ký -->
<?php 
	include('controller/signIn.php');
?>

<!-- include file xử lý tác vụ đăng xuất -->
<?php 
	include('controller/logOut.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Trọ tốt</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- <script type="text/javascript" src="vendor/bootstrap.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<link rel="stylesheet" href="vendor/bootstrap.css"> -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="styles/CSS.css">
	
</head>
<body>
	<!-- Khung đăng ký, đăng nhập -->
	<?php 
		include('module/LogInAndSignIn.php');
	?>

	<!-- Menu hiển thị ra khi scroll màn hình -->
	<?php
		include('module/menuScroll.php');
	?>

	<!-- Header -->
	<?php
		include('module/header.php');
	?>

	<!-- Menu chính -->
	<?php
		include('module/menu.php');
	?>

	<!-- Khung tìm kiếm của trang chủ -->
	<?php
		include('module/filterOfIndex.php');
	?>

	<!-- Phần hiển thị đường dẫn các trang -->
	<div class="container">
		<p id="path">
			<a href="index.php" class="link">Trang chủ</a>
		</p>
	</div>

	<!-- Phần thân để hiển thị các tin bài đăng -->
	<div class="container" style="">
		<div class="row">
			<!-- phần khung các tin đã đăng -->
			<div class="col-lg-9 col-md-9 col-sm-12 col-sx-12" id="room_main_content">
				<div class="row">
					<?php
						include('module/newRoomOfIndex.php');
					?>
				</div>
			</div>
		</div>
	</div>

	<!-- Phần chân trang -->
	<?php
		include('module/footer.php');
	?>

	<!-- Nhúng file javascript -->
	<script type="text/javascript" src="scripts/JavaScript.js"></script> 

	<?php
		include('controller/displayLogInBackground.php');
	?>

</body>
</html>