<?php
    session_start();
?>

<?php
	if(isset($_POST['title'])) {
		echo $_POST['title']. '<br/>';
	} else {
		echo "No title <br/>";
	}

	if(isset($_POST['KieuPhong'])) {
		echo $_POST['KieuPhong']. '<br/>';
	} else {
		echo "No KieuPhong <br/>";
	}

	if(isset($_POST['VeSinh'])) {
		echo $_POST['VeSinh']. '<br/>';
	} else {
		echo "No KieuVeSinh <br/>";
	}

	if(isset($_POST['price'])) {
		echo $_POST['price']. '<br/>';
	} else {
		echo "No price <br/>";
	}

	if(isset($_POST['area'])) {
		echo $_POST['area']. '<br/>';
	} else {
		echo "No area <br/>";
	}

	if(isset($_POST['electricPrice'])) {
		echo $_POST['electricPrice']. '<br/>';
	} else {
		echo "No electricPrice <br/>";
	}

	if(isset($_POST['waterPrice'])) {
		echo $_POST['waterPrice']. '<br/>';
	} else {
		echo "No waterPrice <br/>";
	}

	if(isset($_POST['doiTuong'])) {
		echo $_POST['doiTuong']. '<br/>';
	} else {
		echo "No doiTuong <br/>";
	}

	if(isset($_POST['tienIch'])) {
		echo $_POST['tienIch']. '<br/>';
	} else {
		echo "No tienIch <br/>";
	}
	if(isset($_POST['quanHuyen'])) {
		echo $_POST['quanHuyen']. '</br>';
	} else {
		echo "No quanHuyen";
	}
	if(isset($_POST['xaPhuong'])) {
		echo $_POST['xaPhuong']. '<br/>';
	} else {
		echo "No xaPhuong <br/>";
	}
	if(isset($_POST['diaChi'])) {
		echo $_POST['diaChi']. '<br/>';
	} else {
		echo "No diaChi <br/>";
	}
	if(isset($_POST['tenChuTro'])) {
		echo $_POST['tenChuTro']. '<br/>';
	} else {
		echo "No tenChuTro <br/>";
	}
	if(isset($_POST['sdt'])) {
		echo $_POST['sdt']. '<br/>';
	} else {
		echo "No sdt <br/>";
	}
	if(isset($_POST['moTa'])) {
		echo $_POST['moTa']. '<br/>';
	} else {
		echo "No moTa <br/>";
	}

	echo "<pre>";
	print_r($_FILES);
	echo "</pre>";


	
	if(isset($_POST['title']) && isset($_POST['KieuPhong']) && isset($_POST['VeSinh']) && isset($_POST['price']) && isset($_POST['area']) && isset($_POST['electricPrice']) && isset($_POST['waterPrice']) && isset($_POST['doiTuong']) && isset($_POST['tienIch']) && isset($_POST['quanHuyen']) && isset($_POST['xaPhuong']) && isset($_POST['diaChi']) && isset($_POST['tenChuTro']) && isset($_POST['sdt']) && isset($_POST['moTa']) && isset($_SESSION['user_name'])) {

		//kết nối đến CSDL
		include('connectToDatabase.php');

		$last_id = 0;

		//Câu lệnh sql insert giá trị vào bảng dia_chi_phong_tro
		$sql_insert_dia_chi_phong_tro = 'INSERT INTO dia_chi_phong_tro(DiaChi, XaPhuong, QuanHuyen, TenChuTro, Sdt) VALUE("' .$_POST['diaChi']. '", "' .$_POST['xaPhuong']. '", "' .$_POST['quanHuyen']. '", "' .$_POST['tenChuTro']. '", "' .$_POST['sdt']. '")';
		echo $sql_insert_dia_chi_phong_tro. '<br/>';

		if(mysqli_query($conn, $sql_insert_dia_chi_phong_tro)) {
			echo "Success <br/>";
			$last_id = mysqli_insert_id($conn);
		} else {
			echo "ERROR <br/>";
		}

		//Tải hình ảnh lên csdl
		$sql_insert_imags = 'INSERT INTO hinh_anh_bai_dang(IDBaiDang, DuongDan) VALUE'; //Câu lệnh sql thêm hình ảnh

		$target_dir = "uploads/"; //folder lưu hình ảnh

		$num_of_imgs = count($_FILES['fileToUpload']['name']); //số hình ảnh upload lên

		$target_file = array(); //mảng lưu đường dẫn của từng hình ảnh
		for($i=0; $i<$num_of_imgs; $i++) {
			$target_file[$i] = $target_dir . basename($_FILES["fileToUpload"]["name"][$i]); //lấy đường dẫn của từng hình ảnh

		}

		for($i=0; $i<$num_of_imgs; $i++) {
	    	if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"][$i], $target_file[$i])) {
	            echo "The file ". basename( $_FILES["fileToUpload"]["name"][$i]). " has been uploaded. <br/>";
	            if($i==$num_of_imgs-1) {
	                $sql_insert_imags = $sql_insert_imags. '("' .$last_id. '", "' .$target_file[$i]. '")';
	            } else {
	                $sql_insert_imags = $sql_insert_imags. '("' .$last_id. '", "' .$target_file[$i]. '"),';
	            }
	        } else {
	            echo "Sorry, there was an error uploading your file. <br/>";
	        }
	    }
	    echo $sql_insert_imags;
	    if(mysqli_query($conn, $sql_insert_imags)) {
	        echo "Upload succed! <br/>";
	    } else {
	    	die("Connection failed: " . mysqli_connect_error(). ' <br/>');
	    }

		//Câu lệnh sql insert giá trị vào bảng gia_phong_tro
		$sql_insert_gia_phong_tro = 'INSERT INTO gia_phong_tro(IDPhongTro, user_name, TieuDe, KieuPhong, KieuVeSinh, GiaChoThue, DienTich, GiaDien, GiaNuoc, DoiTuong, TienIch, MoTa, ThoiGianDang) VALUE("' .$last_id. '", "' .$_SESSION['user_name']. '", "' .$_POST['title']. '", "' .$_POST['KieuPhong']. '", "' .$_POST['VeSinh']. '", "' .$_POST['price']. '", "' .$_POST['area']. '", "' .$_POST['electricPrice']. '", "' .$_POST['waterPrice']. '", "' .$_POST['doiTuong']. '", "' .$_POST['tienIch']. '", "' .$_POST['moTa']. '", "' .date('Y-m-d H:i:s'). '")';
		echo $sql_insert_gia_phong_tro. '<br/>';

		if(mysqli_query($conn, $sql_insert_gia_phong_tro)) {
			echo "Success <br/>";
		} else {
			echo "ERROR <br/>";
		}

		
	}



?>