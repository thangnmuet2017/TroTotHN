<?php
    session_start();
?>

<?php
	if(isset($_POST["DangTin"])){
		//kết nối đến CSDL
		include('connectToDatabase.php');

		//Câu lệnh sql insert giá trị vào bảng dia_chi_phong_tro
		$sql_insert_dia_chi_phong_tro = 'INSERT INTO dia_chi_phong_tro(DiaChi, XaPhuong, QuanHuyen, TenChuTro, Sdt) VALUE("' .$_POST['diaChi']. '", "' .$_POST['xaPhuong']. '", "' .$_POST['quanHuyen']. '", "' .$_POST['tenChuTro']. '", "' .$_POST['sdt']. '")';

		mysqli_query($conn, $sql_insert_dia_chi_phong_tro);

		// Lấy id phòng trọ vừa thêm vào

		$idPhongTro = mysqli_insert_id($conn);

		//Câu lệnh sql insert giá trị vào bảng gia_phong_tro

		$sql_insert_gia_phong_tro = 'INSERT INTO gia_phong_tro(IDPhongTro, user_name, TieuDe, KieuPhong, KieuVeSinh, GiaChoThue, DienTich, GiaDien, GiaNuoc, DoiTuong, TienIch, MoTa, ThoiGianDang) VALUE("' .$idPhongTro. '", "' .$_SESSION['user_name']. '", "' .$_POST['title']. '", "' .$_POST['KieuPhong']. '", "' .$_POST['VeSinh']. '", "' .$_POST['price']. '", "' .$_POST['area']. '", "' .$_POST['electricPrice']. '", "' .$_POST['waterPrice']. '", "' .$_POST['doiTuong']. '", "' .$_POST['tienIch']. '", "' .$_POST['moTa']. '", "' .date('Y-m-d H:i:s'). '")';
		
		mysqli_query($conn, $sql_insert_gia_phong_tro);

		//Tải hình ảnh lên csdl
		$sql_insert_imags = 'INSERT INTO hinh_anh_phong_tro(IDPhongTro, DuongDan) VALUE'; //Câu lệnh sql thêm hình ảnh

		$target_dir = "uploads/"; //folder lưu hình ảnh

		$num_of_imgs = count($_FILES['fileToUpload']['name']); //số hình ảnh upload lên

		$target_file = array(); //mảng lưu đường dẫn của từng hình ảnh
		for($i=0; $i<$num_of_imgs; $i++) {
			$target_file[$i] = $target_dir . basename($_FILES["fileToUpload"]["name"][$i]); //lấy đường dẫn của từng hình ảnh

		}

		for($i=0; $i<$num_of_imgs; $i++) {
	    	if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"][$i], $target_file[$i])) {
	            if($i==$num_of_imgs-1) {
	                $sql_insert_imags = $sql_insert_imags. '("' .$idPhongTro. '", "' .$target_file[$i]. '")';
	            } else {
	                $sql_insert_imags = $sql_insert_imags. '("' .$idPhongTro. '", "' .$target_file[$i]. '"),';
	            }
	        } else {
	            echo "Sorry, there was an error uploading your file. <br/>";
	        }
	    }
	    mysqli_query($conn, $sql_insert_imags);

	    header("Location: http://localhost/TroTotHN/index.php");
		
	}



?>
