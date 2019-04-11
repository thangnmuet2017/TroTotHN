
<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    }
?>

<!-- Sử dụng AJAX để gửi dữ liệu lên server kiểm tra việc đăng nhập -->
<script>
function logInAction() {
	var email = document.getElementById("logIn_email").value;
	var password = document.getElementById("logIn_password").value;
    if (email == "" && password == "") {
        document.getElementById("error_input_logIn").innerHTML = "Bạn chưa nhập tài khoản, mật khẩu!";
        return;
    } else { 
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("error_input_logIn").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","./controller/logIn.php?e="+email+"&p="+password,true);
        xmlhttp.send();
    }
}
</script>
	
</head>
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

		<form action="" method="POST" onsubmit=" return false">
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
				<button id="submit_logIn_button" type="submit" class="btn btn-success" name="logIn" onclick="logInAction()">Đăng nhập</button>
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

		<form action="" method="POST" onsubmit="return validateSignInForm()">
			<div class="form-group col-xs-offset-1 col-xs-10">
				<label for="display_name">Tên hiển thị: </label> <span class="error_input" id="error_input_name_signIn"></span>
				<span class="error_input">
					<!-- <?php
						if($user_name_singIn_existed == true) {
							echo "Tên đã tồn tại, vui lòng nhập tên khác!";
							$user_name_singIn_existed = false;
						} else {
							echo "";
						}
						//echo $error_user_name;
					?></span> -->
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
				<button id="submit_signIn_button" type="submit" class="btn btn-success" name="signIn">Đăng ký</button>
			</div>
		</form>
	</div>
</div>

