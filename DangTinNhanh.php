<?php
    session_start();
?>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Đăng tin nhanh</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- <script type="text/javascript" src="vendor/bootstrap.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<link rel="stylesheet" href="vendor/bootstrap.css"> -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="styles/CSS.css">
	<style type="text/css">
		h4 {
			color: green;
		}
		input, select, textarea {
			background-color: #f8f8f8;
			border: solid #32cc66 1px;
			padding: 5px 0px;
			width: 100%;
		}
		input {
			padding: 5px 10px;
		}
		.notes {
			background-color: #dff0d8;
			padding: 5px 10px;
		}
		h4 span {
			color: red;
		}
		.view_images {
			height: 200px;
		}

	</style>
	
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
			<a href="DangTinNhanh.php" class="link">Đăng tin nhanh</a>
		</p>
	</div>

	<!-- Phần thân để hiển thị phần nhập vào các thông tin của bài đăng -->
	<div class="container" style="margin-bottom: 20px; ">
		<div class="row">
			
			<?php 
				include('module/uploadNewRoom.php');
			?>
			

			<!-- Phần hướng dẫn nhập thông tin -->
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
				<h3>Hướng dẫn đăng tin</h3>
				<b>
					<p>
						- Thông tin có dấu <span style="color: red;">*</span> là bắt buộc.
					</p>
					<p>
						- Các thông tin phải viết bằng Tiếng Việt có dấu, đúng chính tả, không viết tắt.
					</p>
					<p>
						- Phần tiêu đề phải ít hơn 80 kí tự
					</p>
					<p>- Các bạn nên điền đầy đủ thông tin vào các mục để tin đăng có hiệu quả hơn! Giữ phím Ctrl để đăng nhiều ảnh cùng lúc.</p>
					<p>- Tin đăng có hình ảnh rõ ràng sẽ được xem và gọi gấp nhiều lần so với tin rao không có ảnh. Hãy đăng ảnh để được giao dịch nhanh chóng!</p>
				</b>
			</div>
			
		</div>
	</div>

	<!-- Phần chân trang -->
	<?php
		include('module/footer.php');
	?>

	<!-- Nhúng file javascript -->	
	<script type="text/javascript" src="scripts/JSDangTin.js"></script>
	<script type="text/javascript" src="scripts/JavaScript.js"></script> 

	<!-- Kiểm tra nếu đăng nhập rồi thì mới cho đăng bài -->
	<script type="text/javascript">

		//Hiển thị nút đăng nhập trong lần đàu nhấn vào trang đăng tin
		<?php
			if(!isset($_SESSION['user_name'])) {
				echo '$("#login_background").css("display", "block");
							$("#logIn_area").css("display", "block");
							$("#signIn_area").css("display", "none");
							$(".logIn_menu_button").css("color", "green");
							$(".signIn_menu_button").css("color", "black");
							alert("Bạn cần đăng nhập để có thể đăng bài!");';
			}
		?>
		
		//Hàm kiểm tra điều kiện để submit nội dung của tin bài đăng
		//Nếu mọi nội dung được nhập chính xác thì mới gửi dữ liệu lên server khi nhấn nút đăng tin
		function validateForm() {
			if(document.getElementById("input_title").value == ""
				|| document.getElementById("input_room_price").value == ""
				|| document.getElementById("input_room_area").value == ""
				|| document.getElementById("quan_huyen_select").value == ""
				|| document.getElementById("xaPhuongSelect").value == ""
				|| document.getElementById("input_exacly_address").value == ""
				|| document.getElementById("input_phone_number").value == ""
				|| document.getElementById("input_room_describle").value == "") {
				return false;
			}
			var checkboxKieuPhong = document.getElementsByName("KieuPhong");
			var KieuPhongChecked = false;
			for (var i = 0; i < checkboxKieuPhong.length; i++){
				if (checkboxKieuPhong[i].checked === true){
					KieuPhongChecked = true;
				}
			}
			if (KieuPhongChecked == false) {
				return false;
			}

			var checkboxKieuVeSinh = document.getElementsByName("VeSinh");
			var KieuVeSinhChecked = false;
			for (var i = 0; i < checkboxKieuVeSinh.length; i++){
				if (checkboxKieuVeSinh[i].checked === true){
					KieuVeSinhChecked = true;
				}
			}
			if(KieuVeSinhChecked == false) {
				return false;
			}

			//Kiểm tra điều kiện của file submit
			var file = document.getElementById("upload_images");
			if('files' in file) {
				if(file.files.length==0) {
					return false;
				} else {
					for(var i=0; i<file.files.length; i++) {
						if('type' in file) {
							if(file.files[i].type != "image/jpg" && file.files[i].type != "image/jpeg" && file.files[i].type != "image/png" && file.files[i].type != "image/gif") {
								return false;
							}
						} 
					}
				}
			}

			//Hiển thị khung đăng nhập lúc nhấn nút đăng tin
			<?php 
				if(!isset($_SESSION['user_name'])) {
					echo '$("#login_background").css("display", "block");
						$("#logIn_area").css("display", "block");
						$("#signIn_area").css("display", "none");
						$(".logIn_menu_button").css("color", "green");
						$(".signIn_menu_button").css("color", "black");
						alert("Bạn cần đăng nhập để có thể đăng bài!");
						return false;';
				}
			?>
		}
	</script>
</body>
</html>
