<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Tìm kiếm</title>
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
			<a href="index.php" class="link">Trang chủ / </a>
			<a class = "link"> Kết quả tìm kiếm </a>
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
								    	<li><a href="KetQuaTimKiem.php?
								    		<?php
								    			$url = '';
								    			if(isset($_GET['kieuPhong'])) {
													if($_GET['kieuPhong'] != "Tất cả") {
														$url = $url. 'kieuPhong=' .$_GET['kieuPhong'].'&';
													}
												}
												if(isset($_GET['kieuVeSinh'])) {
													if($_GET['kieuVeSinh'] != "Tất cả") {
														$url = $url. 'kieuVeSinh=' .$_GET['kieuVeSinh'].'&';
													}
												}
												if(isset($_GET['quanHuyen'])) {
													if($_GET['quanHuyen']!="") {
														$url = $url. 'quanHuyen=' .$_GET['quanHuyen'].'&';
													}
												}
												if(isset($_GET['xaPhuong'])) {
													if($_GET['xaPhuong']!="") {
														$url = $url. 'xaPhuong=' .$_GET['xaPhuong'].'&';
													}
												}
												if(isset($_GET['price_from']) && isset($_GET['price_to'])) {
													if($_GET['price_from']!="0" || $_GET['price_to']!="5000000") {
														$url = $url. 'price_from=' .$_GET['price_from']. '&price_to=' .$_GET['price_to']. '&';
													}
												}
												echo $url;
								    		?>
								    		sorting_time=Mới+nhất">Mới nhất</a></li>
								    	<li><a href="KetQuaTimKiem.php?
								    		<?php
								    			$url = '';
								    			if(isset($_GET['kieuPhong'])) {
													if($_GET['kieuPhong'] != "Tất cả") {
														$url = $url. 'kieuPhong=' .$_GET['kieuPhong'].'&';
													}
												}
												if(isset($_GET['kieuVeSinh'])) {
													if($_GET['kieuVeSinh'] != "Tất cả") {
														$url = $url. 'kieuVeSinh=' .$_GET['kieuVeSinh'].'&';
													}
												}
												if(isset($_GET['quanHuyen'])) {
													if($_GET['quanHuyen']!="") {
														$url = $url. 'quanHuyen=' .$_GET['quanHuyen'].'&';
													}
												}
												if(isset($_GET['xaPhuong'])) {
													if($_GET['xaPhuong']!="") {
														$url = $url. 'xaPhuong=' .$_GET['xaPhuong'].'&';
													}
												}
												if(isset($_GET['price_from']) && isset($_GET['price_to'])) {
													if($_GET['price_from']!="0" || $_GET['price_to']!="5000000") {
														$url = $url. 'price_from=' .$_GET['price_from']. '&price_to=' .$_GET['price_to']. '&';
													}
												}
												echo $url;
								    		?>
								    		sorting_time=Cũ+nhất">Cũ nhất</a></li>
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
								    	<li><a href="KetQuaTimKiem.php?
								    		<?php
								    			$url = '';
								    			if(isset($_GET['kieuPhong'])) {
													if($_GET['kieuPhong'] != "Tất cả") {
														$url = $url. 'kieuPhong=' .$_GET['kieuPhong'].'&';
													}
												}
												if(isset($_GET['kieuVeSinh'])) {
													if($_GET['kieuVeSinh'] != "Tất cả") {
														$url = $url. 'kieuVeSinh=' .$_GET['kieuVeSinh'].'&';
													}
												}
												if(isset($_GET['quanHuyen'])) {
													if($_GET['quanHuyen']!="") {
														$url = $url. 'quanHuyen=' .$_GET['quanHuyen'].'&';
													}
												}
												if(isset($_GET['xaPhuong'])) {
													if($_GET['xaPhuong']!="") {
														$url = $url. 'xaPhuong=' .$_GET['xaPhuong'].'&';
													}
												}
												if(isset($_GET['price_from']) && isset($_GET['price_to'])) {
													if($_GET['price_from']!="0" || $_GET['price_to']!="5000000") {
														$url = $url. 'price_from=' .$_GET['price_from']. '&price_to=' .$_GET['price_to']. '&';
													}
												}
												echo $url;
								    		?>
								    		sorting_price=Rẻ+nhất">Rẻ nhất</a></li>
								    	<li><a href="KetQuaTimKiem.php?
											<?php
								    			$url = '';
								    			if(isset($_GET['kieuPhong'])) {
													if($_GET['kieuPhong'] != "Tất cả") {
														$url = $url. 'kieuPhong=' .$_GET['kieuPhong'].'&';
													}
												}
												if(isset($_GET['kieuVeSinh'])) {
													if($_GET['kieuVeSinh'] != "Tất cả") {
														$url = $url. 'kieuVeSinh=' .$_GET['kieuVeSinh'].'&';
													}
												}
												if(isset($_GET['quanHuyen'])) {
													if($_GET['quanHuyen']!="") {
														$url = $url. 'quanHuyen=' .$_GET['quanHuyen'].'&';
													}
												}
												if(isset($_GET['xaPhuong'])) {
													if($_GET['xaPhuong']!="") {
														$url = $url. 'xaPhuong=' .$_GET['xaPhuong'].'&';
													}
												}
												if(isset($_GET['price_from']) && isset($_GET['price_to'])) {
													if($_GET['price_from']!="0" || $_GET['price_to']!="5000000") {
														$url = $url. 'price_from=' .$_GET['price_from']. '&price_to=' .$_GET['price_to']. '&';
													}
												}
												echo $url;
								    		?>
								    		sorting_price=Đắt+nhất">Đắt nhất</a></li>
								    </ul>
								</div>
							</div>
						</div>
					</div>

					<!-- Phần hiển thị các tin bài -->
					<div class="col-xs-12" id="room_main_content">
						<div class="row" id="new_rooms_of_searching">
							
							<!-- Hiển thị các phòng trọ -->
							<?php
								include('module/newRoomSearching.php');
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
