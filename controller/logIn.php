<!-- Nhận dữ liệu gửi lên server thông qua AJAX trong file DangKyDangNhap.php và xử lý đăng nhập -->
<?php
	//kết nối đến CSDL
	include('connectToDatabase.php');

	//lấy giá trị của 2 biến email và password từ client gửi sang
	$email = $_GET['e'];
	$password = $_GET['p'];

	$can_submit = false;
	$user_name_singIn_existed = false; //biến kiểm tra xem tên vừa đăng ký đã có chưa

	//Kiểm tra xem đăng nhập có đúng k
	$sql_select_user_name = 'SELECT email, password FROM user WHERE email="' .$email. '" AND password="' .$password. '"';
	if($result = mysqli_query($conn, $sql_select_user_name)) {
		if(mysqli_num_rows($result)!=1) {
			echo "Email hoặc mật khẩu sai!";
		
		} else {
			echo "Đăng nhập thành công!";
			$is_logged = true;
		}
	} else {
		echo "Lỗi kết nối!";
		echo "Error: <br>" . mysqli_error($conn);
	}
	mysqli_close($conn);
?>