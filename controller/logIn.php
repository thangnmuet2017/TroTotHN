

<!-- Nhận dữ liệu gửi lên server thông qua AJAX trong file DangKyDangNhap.php và xử lý đăng nhập -->
<?php
	//kết nối đến CSDL
	include('connectToDatabase.php');

	//lấy giá trị của 2 biến user_name và password từ client gửi sang
	$user_name = $_GET['n'];
	$password = $_GET['p'];

	$can_submit = false;

	//Kiểm tra xem đăng nhập có đúng k
	$sql_select_user_name = 'SELECT * FROM user WHERE user_name="' .$user_name. '" AND password="' .$password. '"';
	if($result = mysqli_query($conn, $sql_select_user_name)) {
		if(mysqli_num_rows($result)!=1) {
			echo "Tài khoản hoặc mật khẩu sai!";
		} else {
			echo "Đăng nhập thành công!";
			$_SESSION['user_name'] = $user_name;

		}
	} else {
		echo "Lỗi kết nối!";
		echo "Error: <br>" . mysqli_error($conn);
	}
	if(isset($_SESSION['user_name'])) {
				echo $_SESSION['user_name'];
			}
	mysqli_close($conn);
?>