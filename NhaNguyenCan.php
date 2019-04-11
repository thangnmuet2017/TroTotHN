<!DOCTYPE html>
<html lang="en">
<head>
	<title>Nhà nguyên căn</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="vendor/bootstrap.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<link rel="stylesheet" href="vendor/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="styles/CSS.css">

	<!-- File lưu các biến dùng chung -->
	<?php 
		include('controller/generalVariable.php');
	?>

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
			<a href="NhaNguyenCan.php" class="link">Nhà nguyên căn</a>
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
								<select class="select_tags">
									<option>Sắp xếp thời gian</option>
									<option>Mới nhất</option>
									<option>Cũ nhất</option>
								</select>
							</div>
							<div style="float: right; margin: 0px 10px;">
								<select class="select_tags">
									<option>Sắp xếp giá</option>
									<option>Rẻ nhất</option>
									<option>Đắt nhất</option>
								</select>
							</div>
						</div>
					</div>

					<!-- Phần hiển thị các tin bài -->
					<div class="col-xs-12" id="room_main_content">
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-lg-3 col-md-4 col-sm-4 col-xs-6">
										<a href="ChiTietCanPhong.php" class="thumbnail">
											<img src="images/icon-acount.png" style="width: 100%; height: 100%;">
										</a>
									</div>
									<div class="col-lg-9col-md-8 col-sm-8 col-xs-12">
										<div class="row">
											<a href="ChiTietCanPhong.php" class="col-xs-12 link simple_room_info_line">
												<h3 style="margin-top: 10px;">Cho thuê phòng trọ khu vực Cầu Giấy</h3>
											</a>
											<b class="col-xs-12 simple_room_info_line"> 
												<span style="color: green;">Địa chỉ: </span> 
												<span>Số 9, ngõ 63/5/9, đường Lê Đức Thọ, phường Mỹ Đình 2, quận Nam Từ Liêm</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green">Diện tích: </span>
												<span>20 m<sup>2</sup></span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Vệ sinh: </span>
												<span>Khép kín</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Tên chủ trọ: </span>
												<span>Nguyễn Văn A</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Sđt liên hệ: </span>
												<span>0123456789</span>
											</b>
											<b class="col-xs-12 simple_room_info_line">
												<span style="color: green;">Giá: </span>
												<span>5000000 đồng/tháng</span>
											</b>
											<p class="col-xs-12 text-right simple_room_info_line" style="color: gray">1 ngày trước</p>
										</div>
									</div>
								</div>
							</div> <!-- Hết 1 bài đăng -->

							<div class="col-xs-12">
								<div class="row">
									<div class="col-lg-3 col-md-4 col-sm-4 col-xs-6">
										<a href="ChiTietCanPhong.php" class="thumbnail">
											<img src="images/icon-acount.png" style="width: 100%; height: 100%;">
										</a>
									</div>
									<div class="col-lg-9col-md-8 col-sm-8 col-xs-12">
										<div class="row">
											<a href="ChiTietCanPhong.php" class="col-xs-12 link simple_room_info_line">
												<h3 style="margin-top: 10px;">Cho thuê phòng trọ khu vực Cầu Giấy</h3>
											</a>
											<b class="col-xs-12 simple_room_info_line"> 
												<span style="color: green;">Địa chỉ: </span> 
												<span>Số 9, ngõ 63/5/9, đường Lê Đức Thọ, phường Mỹ Đình 2, quận Nam Từ Liêm</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green">Diện tích: </span>
												<span>20 m<sup>2</sup></span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Vệ sinh: </span>
												<span>Khép kín</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Tên chủ trọ: </span>
												<span>Nguyễn Văn A</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Sđt liên hệ: </span>
												<span>0123456789</span>
											</b>
											<b class="col-xs-12 simple_room_info_line">
												<span style="color: green;">Giá: </span>
												<span>5000000 đồng/tháng</span>
											</b>
											<p class="col-xs-12 text-right simple_room_info_line" style="color: gray">1 ngày trước</p>
										</div>
									</div>
								</div>
							</div> <!-- Hết 1 bài đăng -->

							<div class="col-xs-12">
								<div class="row">
									<div class="col-lg-3 col-md-4 col-sm-4 col-xs-6">
										<a href="ChiTietCanPhong.php" class="thumbnail">
											<img src="images/icon-acount.png" style="width: 100%; height: 100%;">
										</a>
									</div>
									<div class="col-lg-9col-md-8 col-sm-8 col-xs-12">
										<div class="row">
											<a href="ChiTietCanPhong.php" class="col-xs-12 link simple_room_info_line">
												<h3 style="margin-top: 10px;">Cho thuê phòng trọ khu vực Cầu Giấy</h3>
											</a>
											<b class="col-xs-12 simple_room_info_line"> 
												<span style="color: green;">Địa chỉ: </span> 
												<span>Số 9, ngõ 63/5/9, đường Lê Đức Thọ, phường Mỹ Đình 2, quận Nam Từ Liêm</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green">Diện tích: </span>
												<span>20 m<sup>2</sup></span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Vệ sinh: </span>
												<span>Khép kín</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Tên chủ trọ: </span>
												<span>Nguyễn Văn A</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Sđt liên hệ: </span>
												<span>0123456789</span>
											</b>
											<b class="col-xs-12 simple_room_info_line">
												<span style="color: green;">Giá: </span>
												<span>5000000 đồng/tháng</span>
											</b>
											<p class="col-xs-12 text-right simple_room_info_line" style="color: gray">1 ngày trước</p>
										</div>
									</div>
								</div>
							</div> <!-- Hết 1 bài đăng -->
							
							<div class="col-xs-12">
								<div class="row">
									<div class="col-lg-3 col-md-4 col-sm-4 col-xs-6">
										<a href="ChiTietCanPhong.php" class="thumbnail">
											<img src="images/icon-acount.png" style="width: 100%; height: 100%;">
										</a>
									</div>
									<div class="col-lg-9col-md-8 col-sm-8 col-xs-12">
										<div class="row">
											<a href="ChiTietCanPhong.php" class="col-xs-12 link simple_room_info_line">
												<h3 style="margin-top: 10px;">Cho thuê phòng trọ khu vực Cầu Giấy</h3>
											</a>
											<b class="col-xs-12 simple_room_info_line"> 
												<span style="color: green;">Địa chỉ: </span> 
												<span>Số 9, ngõ 63/5/9, đường Lê Đức Thọ, phường Mỹ Đình 2, quận Nam Từ Liêm</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green">Diện tích: </span>
												<span>20 m<sup>2</sup></span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Vệ sinh: </span>
												<span>Khép kín</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Tên chủ trọ: </span>
												<span>Nguyễn Văn A</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Sđt liên hệ: </span>
												<span>0123456789</span>
											</b>
											<b class="col-xs-12 simple_room_info_line">
												<span style="color: green;">Giá: </span>
												<span>5000000 đồng/tháng</span>
											</b>
											<p class="col-xs-12 text-right simple_room_info_line" style="color: gray">1 ngày trước</p>
										</div>
									</div>
								</div>
							</div> <!-- Hết 1 bài đăng -->
							
							<div class="col-xs-12">
								<div class="row">
									<div class="col-lg-3 col-md-4 col-sm-4 col-xs-6">
										<a href="ChiTietCanPhong.php" class="thumbnail">
											<img src="images/icon-acount.png" style="width: 100%; height: 100%;">
										</a>
									</div>
									<div class="col-lg-9col-md-8 col-sm-8 col-xs-12">
										<div class="row">
											<a href="ChiTietCanPhong.php" class="col-xs-12 link simple_room_info_line">
												<h3 style="margin-top: 10px;">Cho thuê phòng trọ khu vực Cầu Giấy</h3>
											</a>
											<b class="col-xs-12 simple_room_info_line"> 
												<span style="color: green;">Địa chỉ: </span> 
												<span>Số 9, ngõ 63/5/9, đường Lê Đức Thọ, phường Mỹ Đình 2, quận Nam Từ Liêm</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green">Diện tích: </span>
												<span>20 m<sup>2</sup></span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Vệ sinh: </span>
												<span>Khép kín</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Tên chủ trọ: </span>
												<span>Nguyễn Văn A</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Sđt liên hệ: </span>
												<span>0123456789</span>
											</b>
											<b class="col-xs-12 simple_room_info_line">
												<span style="color: green;">Giá: </span>
												<span>5000000 đồng/tháng</span>
											</b>
											<p class="col-xs-12 text-right simple_room_info_line" style="color: gray">1 ngày trước</p>
										</div>
									</div>
								</div>
							</div> <!-- Hết 1 bài đăng -->
							
							<div class="col-xs-12">
								<div class="row">
									<div class="col-lg-3 col-md-4 col-sm-4 col-xs-6">
										<a href="ChiTietCanPhong.php" class="thumbnail">
											<img src="images/icon-acount.png" style="width: 100%; height: 100%;">
										</a>
									</div>
									<div class="col-lg-9col-md-8 col-sm-8 col-xs-12">
										<div class="row">
											<a href="ChiTietCanPhong.php" class="col-xs-12 link simple_room_info_line">
												<h3 style="margin-top: 10px;">Cho thuê phòng trọ khu vực Cầu Giấy</h3>
											</a>
											<b class="col-xs-12 simple_room_info_line"> 
												<span style="color: green;">Địa chỉ: </span> 
												<span>Số 9, ngõ 63/5/9, đường Lê Đức Thọ, phường Mỹ Đình 2, quận Nam Từ Liêm</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green">Diện tích: </span>
												<span>20 m<sup>2</sup></span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Vệ sinh: </span>
												<span>Khép kín</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Tên chủ trọ: </span>
												<span>Nguyễn Văn A</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Sđt liên hệ: </span>
												<span>0123456789</span>
											</b>
											<b class="col-xs-12 simple_room_info_line">
												<span style="color: green;">Giá: </span>
												<span>5000000 đồng/tháng</span>
											</b>
											<p class="col-xs-12 text-right simple_room_info_line" style="color: gray">1 ngày trước</p>
										</div>
									</div>
								</div>
							</div> <!-- Hết 1 bài đăng -->
							
							<div class="col-xs-12">
								<div class="row">
									<div class="col-lg-3 col-md-4 col-sm-4 col-xs-6">
										<a href="ChiTietCanPhong.php" class="thumbnail">
											<img src="images/icon-acount.png" style="width: 100%; height: 100%;">
										</a>
									</div>
									<div class="col-lg-9col-md-8 col-sm-8 col-xs-12">
										<div class="row">
											<a href="ChiTietCanPhong.php" class="col-xs-12 link simple_room_info_line">
												<h3 style="margin-top: 10px;">Cho thuê phòng trọ khu vực Cầu Giấy</h3>
											</a>
											<b class="col-xs-12 simple_room_info_line"> 
												<span style="color: green;">Địa chỉ: </span> 
												<span>Số 9, ngõ 63/5/9, đường Lê Đức Thọ, phường Mỹ Đình 2, quận Nam Từ Liêm</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green">Diện tích: </span>
												<span>20 m<sup>2</sup></span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Vệ sinh: </span>
												<span>Khép kín</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Tên chủ trọ: </span>
												<span>Nguyễn Văn A</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Sđt liên hệ: </span>
												<span>0123456789</span>
											</b>
											<b class="col-xs-12 simple_room_info_line">
												<span style="color: green;">Giá: </span>
												<span>5000000 đồng/tháng</span>
											</b>
											<p class="col-xs-12 text-right simple_room_info_line" style="color: gray">1 ngày trước</p>
										</div>
									</div>
								</div>
							</div> <!-- Hết 1 bài đăng -->
							
							<div class="col-xs-12">
								<div class="row">
									<div class="col-lg-3 col-md-4 col-sm-4 col-xs-6">
										<a href="ChiTietCanPhong.php" class="thumbnail">
											<img src="images/icon-acount.png" style="width: 100%; height: 100%;">
										</a>
									</div>
									<div class="col-lg-9col-md-8 col-sm-8 col-xs-12">
										<div class="row">
											<a href="ChiTietCanPhong.php" class="col-xs-12 link simple_room_info_line">
												<h3 style="margin-top: 10px;">Cho thuê phòng trọ khu vực Cầu Giấy</h3>
											</a>
											<b class="col-xs-12 simple_room_info_line"> 
												<span style="color: green;">Địa chỉ: </span> 
												<span>Số 9, ngõ 63/5/9, đường Lê Đức Thọ, phường Mỹ Đình 2, quận Nam Từ Liêm</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green">Diện tích: </span>
												<span>20 m<sup>2</sup></span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Vệ sinh: </span>
												<span>Khép kín</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Tên chủ trọ: </span>
												<span>Nguyễn Văn A</span>
											</b>
											<b class="col-sm-6 col-xs-12 simple_room_info_line">
												<span style="color: green;">Sđt liên hệ: </span>
												<span>0123456789</span>
											</b>
											<b class="col-xs-12 simple_room_info_line">
												<span style="color: green;">Giá: </span>
												<span>5000000 đồng/tháng</span>
											</b>
											<p class="col-xs-12 text-right simple_room_info_line" style="color: gray">1 ngày trước</p>
										</div>
									</div>
								</div>
							</div> <!-- Hết 1 bài đăng -->
						</div>
					</div>
					
					<div class="col-xs-12">
						<ul class="pagination pull-right">
							<button type="button" class="btn btn-default"><<</button>
							<button type="button" class="btn btn-default active">1</button>
							<button type="button" class="btn btn-default">2</button>
							<button type="button" class="btn btn-default disabled">...</button>
							<button type="button" class="btn btn-default">3</button>
							<button type="button" class="btn btn-default">>></button>
						</ul>
					</div>
				</div>
			</div>

			<!-- Phần filter bên phải trang -->
			<?php
				include('./module/filterRight.php');
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
<script type="text/javascript" src="scripts/Script.js"></script> 

</body>
</html>
