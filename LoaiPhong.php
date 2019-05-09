<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title><?php echo $_GET['action']; ?></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="vendor/bootstrap.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<link rel="stylesheet" href="vendor/bootstrap.css">
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

	<!-- Phần hiển thị đường dẫn các trang -->
	<div class="container">
		<p id="path">
			<a href="TrangChu.php" class="link">Trang chủ / </a>
			<a class = "link"><?php echo $_GET['action']; ?></a>
		</p>
	</div>

	<!-- Phần thân để hiển thị filter và các tin bài đăng -->
	<div class="container" style="">
		<div class="row">
			<!-- phần khung các tin đã đăng -->
			<div class="col-lg-9 col-md-9 col-sm-12 col-sx-12">
				<div class="row">

					<!-- Phần sắp xếp các tin bài -->
					<div class="col-sx-12" style="border-bottom: gray solid 1px; padding: 15px 15px 10px 15px; margin: 0px 15px 15px 15px;">
						<div class="row">
							<div style="float: right; margin: 0px ;">
								<div class="dropdown">
								    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" style="background-color: #5cb85c; border: solid 1px #5cb85c;">
								    	<?php
								    		if(isset($_GET['sorting_time'])) {
								    			echo $_GET['sorting_time'];
								    		} else {
								    			echo "Sắp xếp thời gian";
								    		}
								    	?>
								    <span class="caret"></span></button>
								    <ul class="dropdown-menu">
								    	<li><a href="LoaiPhong.php?action=<?php echo $_GET['action']; ?>&sorting_time=Mới+nhất">Mới nhất</a></li>
								    	<li><a href="LoaiPhong.php?action=<?php echo $_GET['action']; ?>&sorting_time=Cũ+nhất">Cũ nhất</a></li>
								    </ul>
								</div>
							</div>
							<div style="float: right; margin: 0px 10px;">
								<div class="dropdown">
								    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" style="background-color: #5cb85c; border: solid 1px #5cb85c;">
								    	<?php
								    		if(isset($_GET['sorting_price'])) {
								    			echo $_GET['sorting_price'];
								    		} else {
								    			echo "Sắp xếp giá";
								    		}
								    	?>
								    <span class="caret"></span></button>
								    <ul class="dropdown-menu">
								    	<li><a href="LoaiPhong.php?action=<?php echo $_GET['action']; ?>&sorting_price=Rẻ+nhất">Rẻ nhất</a></li>
								    	<li><a href="LoaiPhong.php?action=<?php echo $_GET['action']; ?>&sorting_price=Đắt+nhất">Đắt nhất</a></li>
								    </ul>
								</div>
							</div>
						</div>
					</div>

					<!-- Phần hiển thị các tin bài -->
					<div class="col-xs-12" id="room_main_content">
						<div class="row" id="new_rooms">
							
							<!-- Hiển thị các phòng trọ -->
							<?php
								include('module/newsRoom.php');
							?>
							
						</div>
					</div>
				</div>
			</div>

			<!-- Phần filter bên phải trang -->
			<?php
				include('module/filterRight.php');
			?>
		</div>
	</div>
</div>

<div class="container-fluid" style="background-color: #2e3339;">
	<div class="container">
		<div class="row">
			<div class="col-sm-7">
				<h3 style="color: #33cc66;">Thông tin liên hệ</h3>
				<p style="color: white;">Điện thoại: 0123456789
					<br>Email: trototHN@gmail.com
					<br>Nhóm 24 - INT2208-8(UET)
				</p>
			</div>
			<div class="col-sm-5">
				<h3 style="color: #33cc66;">Giới thiệu</h3>
				<p style="color: white;">Trang web đăng tin chia sẻ miễn phí thông tin về phòng trọ, nhà riêng khu vực Hà Nội nhằm giúp người thuê phòng và người cho thuê phòng tương tác với nhau không qua trung gian môi giới.</p>
			</div>
		</div>
	</div>
</div>

<!-- Nhúng file javascript -->
<script type="text/javascript" src="scripts/JavaScript.js"></script> 

</body>
</html>
