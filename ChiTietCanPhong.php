
<!DOCTYPE html>
<html lang="en">
<head>
	<title id="title_room_page">Chi tiết căn phòng</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="vendor/bootstrap.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<link rel="stylesheet" href="vendor/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="styles/CSS.css">
	<style type="text/css">
		
	</style>

</head>
<body>
	<!-- Hiển thị khung đăng nhập, đăng ký -->
	<div id="login_background">
		<div id="logIn_area" class="row">
			<div class="col-xs-offset-1 col-xs-10 logIn_menu">
				<button class="login logIn_menu_button">ĐĂNG NHẬP</button>
				<button class="login signIn_menu_button">ĐĂNG KÝ</button>
			</div>

			<div class="col-xs-1" style="padding: 0px;">
				<img src="images/close_icon_16.png" class="pull-right close_login_icon">
			</div>

			<form action="TrangChu.php" method="POST" >
				<div class="form-group col-xs-offset-1 col-xs-10">
					<label for="logIn_email">Email:</label>
					<input type="email" class="form-control" id="logIn_email" placeholder="Địa chỉ email" name="logIn_email">
				</div>
				<div class="form-group  col-xs-offset-1 col-xs-10">
					<label for="logIn_password">Mật khẩu:</label>
					<input type="password" class="form-control" id="logIn_password" placeholder="Mật khẩu" name="logIn_password">
				</div>
				<div class=" col-xs-offset-1 col-xs-10">
					<span class="error_input" id="error_input_logIn"></span>
				</div>
				<div class="checkbox  col-xs-offset-1 col-xs-10">
					<label><input type="checkbox" name="remember" style="width: 13px;"> Nhớ tài khoản</label>
				</div>
				<div class=" col-xs-offset-1 col-xs-10">
					<button id="submit_logIn_button" type="submit" class="btn btn-success">Đăng nhập</button>
				</div>
			</form>
		</div>

		<div id="signIn_area" class="row">
			<div class="col-xs-offset-1 col-xs-10 logIn_menu">
				<button class="login logIn_menu_button">ĐĂNG NHẬP</button>
				<button class="login signIn_menu_button">ĐĂNG KÝ</button>
			</div>

			<div class="col-xs-1" style="padding: 0px;">
				<img src="images/close_icon_16.png" class="pull-right close_login_icon">
			</div>

			<form action="TrangChu.php" method="POST" onsubmit="return validateSignInForm()">
				<div class="form-group col-xs-offset-1 col-xs-10">
					<label for="display_name">Tên hiển thị: </label> <span class="error_input" id="error_input_name_signIn"></span>
					<input type="text" class="form-control" id="display_name" placeholder="Tên hiển thị" name="display_name">
				</div>
				<div class="form-group  col-xs-offset-1 col-xs-10">
					<label for="signIn_email">Email:  </label> <span class="error_input" id="error_input_email_signIn"></span>
					<input type="email" class="form-control" id="signIn_email" placeholder="Email" name="signIn_email">
				</div>
				<div class="form-group  col-xs-offset-1 col-xs-10">
					<label for="signIn_password">Mật khẩu:</label><span class="error_input" id="error_input_password_signIn"></span>
					<input type="password" class="form-control" id="signIn_password" placeholder="Mật khẩu" name="signIn_password">
				</div>
				<div class="form-group  col-xs-offset-1 col-xs-10">
					<label for="signIn_password_again">Nhập lại mật khẩu:  </label><span class="error_input" id="error_input_password_again"></span>
					<input type="password" class="form-control" id="signIn_password_again" placeholder="Nhập lại mật khẩu" name="signIn_password_again">
				</div>
				<div class=" col-xs-offset-1 col-xs-10">
					<button id="submit_signIn_button" type="submit" class="btn btn-success">Đăng ký</button>
				</div>
			</form>
		</div>
	</div>

	<!-- Phần menu hiển thị khi scroll màn hình-->
	<nav class="navbar navbar-default navbar-inverse" role="navigation" id="menu_scroll" style="">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="TrangChu.php" style="padding: 9px 15px;"><img src="images/house-32.png"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="PhongTro.php">
						<b>PHÒNG TRỌ</b>
					</a></li>
					<li><a href="NhaNguyenCan.php">
						<b>NHÀ NGUYÊN CĂN</b>
					</a></li>
					<li><a href="OGhep.php">
						<b>Ở GHÉP</b>
					</a></li>
					<li><a href="DangTinNhanh.php">
						<b>ĐĂNG TIN NHANH</b>
					</a></li>

				</ul>
			</div><!-- /.navbar-collapse -->
		</div>
	</nav>

	<!-- Phần header -->
	<div class="container" id="header" style="">
		<div class="pull-left">
			<a href="TrangChu.php">
				<img src="images/logo.png" alt="">
			</a>
		</div>
		<div class="pull-right">
			<img src="images/icon-acount.png" id="icon_acount" alt="">
			<div style="padding-top: 5px; padding-right: 0px; float: right;">
				<b class="logIn_signIn_button" id="logIn_button">Đăng nhập</b>
				<br>
				<p class="logIn_signIn_button" id="signIn_button">Đăng ký</p>
			</div>
		</div>
	</div>

	<!-- Phần menu -->
	<nav class="navbar navbar-default navbar-inverse" role="navigation" id="menu" style="margin-bottom: 0px;">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="TrangChu.php" style="padding: 9px 15px;"><img src="images/house-32.png"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="PhongTro.php">
						<b>PHÒNG TRỌ</b>
					</a></li>
					<li><a href="NhaNguyenCan.php">
						<b>NHÀ NGUYÊN CĂN</b>
					</a></li>
					<li><a href="OGhep.php">
						<b>Ở GHÉP</b>
					</a></li>
					<li><a href="DangTinNhanh.php">
						<b>ĐĂNG TIN NHANH</b>
					</a></li>

				</ul>
			</div><!-- /.navbar-collapse -->
		</div>
	</nav>


	<!-- Phần hiển thị đường dẫn các trang -->
	<div class="container">
		<p id="path">
			<a href="TrangChu.php" class="link">Trang chủ / </a>
			<a href="PhongTro.php" class="link">Phòng trọ</a>
		</p>
	</div>

	<!-- Phần thân để hiển thị filter và các tin bài đăng -->
	<div class="container" style="">
		<div class="row">
			<!-- phần hiển thị chi tiết của phòng -->
			<div class="col-lg-9 col-md-9 col-sm-12 col-sx-12" style="margin-bottom: 20px;">
				<div class="row">
					<div class="col-xs-12">
						<h3>Cho thuê phòng trọ khu vực Cầu Giấy</h3>
					</div>
					<div class="col-xs-12">
						<b class="col-sm-2 col-xs-4 room_info">Địa chỉ</b>
						<p class="col-sm-10 col-xs-8 room_info">Số 9, ngõ 63/5/9, đường Lê Đức Thọ, phường Mỹ Đình 2, quận Nam Từ Liêm, thành phố Hà Nội</p>
					</div>
					<div class="col-xs-12">
						<b class="col-sm-2 col-xs-4 room_info">Loại phòng</b>
						<p class="col-sm-4 col-xs-8 room_info">Phòng trọ</p>
						<b class="col-sm-2 col-xs-4 room_info">Kiểu vệ sinh</b>
						<p class="col-sm-4 col-xs-8 room_info">Khép kín</p>
					</div>
					<div class="col-xs-12">
						<b class="col-sm-2 col-xs-4 room_info">Giá cho thuê</b>
						<p class="col-sm-4 col-xs-8 room_info">2000000 VNĐ/tháng</p>
						<b class="col-sm-2 col-xs-4 room_info">Diện tích</b>
						<p class="col-sm-4 col-xs-8 room_info">20 m²</p>
					</div>
					<div class="col-xs-12">
						<b class="col-sm-2 col-xs-4 room_info">Giá điện</b>
						<p class="col-sm-4 col-xs-8 room_info">4000 VNĐ/số</p>
						<b class="col-sm-2 col-xs-4 room_info">Giá nước</b>
						<p class="col-sm-4 col-xs-8 room_info">15000 VNĐ/số</p>
					</div>
					<div class="col-xs-12">
						<b class="col-sm-2 col-xs-4 room_info">Đối tượng thuê</b>
						<p class="col-sm-4 col-xs-8 room_info">Tất cả</p>
						<b class="col-sm-2 col-xs-4 room_info">Tiện ích</b>
						<p class="col-sm-4 col-xs-8 room_info">có bình nóng lạnh, điều hòa</p>
					</div>
					<div class="col-xs-12">
						<h4>Thông tin liên hệ</h4>
					</div>
					<div class="col-xs-12">
						<b class="col-sm-2 col-xs-4 room_info">Tên chủ trọ</b>
						<p class="col-sm-4 col-xs-8 room_info">Nguyễn Văn A</p>
						<b class="col-sm-2 col-xs-4 room_info">Số điện thoại</b>
						<p class="col-sm-4 col-xs-8 room_info">0123456789</p>
					</div>
					<div class="col-xs-12">
						<h4>Mô tả chi tiết</h4>
					</div>
					<div class="col-xs-12">
						<p class="col-xs-12 room_info" style="font-weight: normal; background-color: #f8f8f8;">
							Mình cần nhượng lại phòng trọ mới (dạng chung cư mini) vì chuyển công tác..Phòng ở tầng 5 (có thang máy), có diện tích 15m2 có gác, khép kín, có kệ nấu ăn, có giếng trời thoáng mát, Khu phơi quần áo riêng sạch sẽ.
							Vị trí phòng ở đường Cống Lỡ, cách đường Phan Huy Ích 300m, gần chợ Phạm Văn Bạch, khu công nghiệp Tân Bình, Paroda Trường Chinh, đường Quang Trung.
							Giờ giấc tự do, không chung chủ.
							Có chỗ để xe ở tầng hầm, bảo vệ coi 24/24, an ninh tốt. Thích hợp cho vợ chồng trẻ hoặc nhóm 2-3 người. Hiện mình đang thuê với giá 2.400.000 đồng/ tháng (chưa tính tiền điện nước và các dịch vụ khác).
							Phòng có thể chuyển đến ở luôn. Bạn nào có nhu cầu, xin vui lòng liên hệ theo số điện thoại 0906.318.722 (Xuân Trang).
						</p>
					</div>
					<div class="col-xs-12">
						<h4>Hình ảnh</h4>
					</div>
					<div class="col-xs-12">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item active">
									<img src="images/1.jpg" alt="">
								</div>

								<div class="item">
									<img src="images/2.jpg" alt="">
								</div>

								<div class="item">
									<img src="images/3.jpg" alt="">
								</div>
							</div>

							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel" data-slide="prev">
								<span class="glyphicon glyphicon-chevron-left"></span>
								<span class="sr-only">Previous</span>
							</a>
							<a class="right carousel-control" href="#myCarousel" data-slide="next">
								<span class="glyphicon glyphicon-chevron-right"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</div>
				</div>
			</div>

			<!-- Phần filter tìm kiếm -->
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
				<h2 class="text-center" style="color: green; border-bottom: green solid 1px; padding-bottom: 7px; margin-top: 15px;">Bộ lọc tìm kiếm</h2>
				<div class="col-xs-12">
					<h3 style="color: #33cc66">Chọn khu vực</h3>
					<select class="filter_option select_tags" onchange="setUpXaPhuongFilter(this)">
						<option value="">Chọn quận, huyện</option>
						<option value="Quận Ba Đình">Quận Ba Đình</option>
						<option value="Huyện Ba Vì">Huyện Ba Vì</option>
						<option value="Quận Bắc Từ Liêm">Quận Bắc Từ Liêm</option>
						<option value="Quận Cầu Giấy">Quận Cầu Giấy</option>
						<option value="Huyện Chương Mỹ">Huyện Chương Mỹ</option>
						<option value="Huyện Đan Phượng">Huyện Đan Phượng</option>
						<option value="Huyện Đông Anh">Huyện Đông Anh</option>
						<option value="Quận Đống Đa">Quận Đống Đa</option>
						<option value="Huyện Gia Lâm">Huyện Gia Lâm</option>
						<option value="Quận Hà Đông">Quận Hà Đông</option>
						<option value="Quận Hai Bà Trưng">Quận Hai Bà Trưng</option>
						<option value="Huyện Hoài Đức">Huyện Hoài Đức</option>
						<option value="Quận Hoàn Kiếm">Quận Hoàn Kiếm</option>
						<option value="Quận Hoàng Mai">Quận Hoàng Mai</option>
						<option value="Quận Long Biên">Quận Long Biên</option>
						<option value="Huyện Mê Linh">Huyện Mê Linh</option>
						<option value="Huyện Mỹ Đức">Huyện Mỹ Đức</option>
						<option value="Quận Nam Từ Liêm">Quận Nam Từ Liêm</option>
						<option value="Huyện Phú Xuyên">Huyện Phú Xuyên</option>
						<option value="Huyện Phúc Thọ">Huyện Phúc Thọ</option>
						<option value="Huyện Quốc Oai">Huyện Quốc Oai</option>
						<option value="Huyện Sóc Sơn">Huyện Sóc Sơn</option>
						<option value="Huyện Sơn Tây">Huyện Sơn Tây</option>
						<option value="Quận Tây Hồ">Quận Tây Hồ</option>
						<option value="Huyện Thạch Thất">Huyện Thạch Thất</option>
						<option value="Huyện Thanh Oai">Huyện Thanh Oai</option>
						<option value="Huyện Thanh Trì">Huyện Thanh Trì</option>
						<option value="Quận Thanh Xuân">Quận Thanh Xuân</option>
						<option value="Huyện Thường Tín">Huyện Thường Tín</option>
						<option value="Huyện Ứng Hòa">Huyện Ứng Hòa</option>

					</select>
					<select class="filter_option select_tags" id="xaPhuongSelect">
						<option class="select_filter">Chọn xã, phường</option>
					</select>
				</div>
				<div class="col-xs-12">
					<h3 style="color: #33cc66">Chọn loại phòng</h3>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 5px 0px;">
						<input name="KieuPhong" type="radio" value="PhongTro" /> Phòng trọ
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 5px 0px;">
						<input name="KieuPhong" type="radio" value="NhaNguyenCan" /> Nhà nguyên căn
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 5px 0px;">
						<input  name="KieuPhong" type="radio" value="OGhep"> Ở ghép
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 5px 0px;">
						<input  name="KieuPhong" type="radio" value="TatCaPhong"> Tất cả
					</div>
				</div>
				<div class="col-xs-12">
					<h3 style="color: #33cc66">Chọn khoảng giá</h3>
					<div class="row col-lg-12" style="margin: 0px; padding: 0px;">
						<input class="col-lg-4 col-md-4 col-sm-4 col-xs-4 price_filter" type="number" min="0" value="0">
						<p class="col-lg-4 col-md-4 col-sm-4 col-xs-4 text-center" style="color: white;">Đến</p>
						<input class="col-lg-4 col-md-4 col-sm-4 col-xs-4 price_filter" type="number" min="0" value="5000000" >
					</div>
				</div>
				<div class="col-xs-12">
					<h3 style="color: #33cc66">Chọn kiểu vệ sinh</h3>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 5px 0px;">
						<input name="KieuVeSinh" type="radio" value="KhepKin" /> Khép kín
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 5px 0px;">
						<input name="KieuVeSinh" type="radio" value="KhongKhepKin" /> Không khép kín
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 5px 0px;">
						<input  name="KieuVeSinh" type="radio" value="TatCa"> Tất cả
					</div>
				</div>
				<div class="col-xs-12 filter_option" style="width: 100%; text-align: center;">
					<a href="#" class="btn btn-success" role="button" style="display: inline-block;">Tìm kiếm</a>
				</div>
			</div>

			<!-- Phần hiển thị thêm các tin có liên quan -->
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
