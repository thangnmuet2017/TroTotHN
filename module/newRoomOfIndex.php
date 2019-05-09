<?php 
	//kết nối đến CSDL
	include('./controller/connectToDatabase.php');

	//Câu lệnh sql lấy tất cả các phòng
	$sql_select_all = 'SELECT gia_phong_tro.IDPhongTro, dia_chi_phong_tro.QuanHuyen, SUBSTRING(gia_phong_tro.TieuDe, 1, 60) AS TieuDe, gia_phong_tro.GiaChoThue, gia_phong_tro.KieuPhong FROM dia_chi_phong_tro, gia_phong_tro WHERE dia_chi_phong_tro.IDPhongTro=gia_phong_tro.IDPhongTro ORDER BY gia_phong_tro.ThoiGianDang DESC';
	$result_all = mysqli_query($conn, $sql_select_all);

	$row_of_results = mysqli_num_rows($result_all); //Số lượng căn phòng đã đăng
	$result_per_page = 12; //Số lượng bài đăng của một trang

	$number_of_pages = ceil($row_of_results/$result_per_page); //Số trang hiển thị

	//Kiểm tra nếu trang không có biến page thì là trang số 1
	if(!isset($_GET['page'])) {
		$page = 1;
	} else {
		$page = $_GET['page'];
	}

	//Kết quả đầu tiên trả về của trang
	$this_page_first_result = ($page-1)*$result_per_page;

	//Câu lệnh sql lấy về các tin ứng với trang
	$sql_select_each_page = 'SELECT gia_phong_tro.IDPhongTro, dia_chi_phong_tro.QuanHuyen, SUBSTRING(gia_phong_tro.TieuDe, 1, 60) AS TieuDe, gia_phong_tro.GiaChoThue, gia_phong_tro.KieuPhong FROM dia_chi_phong_tro, gia_phong_tro WHERE dia_chi_phong_tro.IDPhongTro=gia_phong_tro.IDPhongTro ORDER BY gia_phong_tro.ThoiGianDang DESC LIMIT ' .$this_page_first_result. ',' .$result_per_page;
	$result_each_page = mysqli_query($conn, $sql_select_each_page);

	while($row = mysqli_fetch_assoc($result_each_page)) {
	?>

	<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
		<div class="thumbnail">
			<a href="ChiTietCanPhong.php?id=<?php echo $row['IDPhongTro']; ?>&type=<?php echo $row['KieuPhong']; ?>" class="link_for_room_detail">
				<?php
					$sql_select_image = 'SELECT DuongDan FROM hinh_anh_phong_tro WHERE IDPhongTro=' .$row['IDPhongTro']. ' LIMIT 1';
					$result_img = mysqli_query($conn, $sql_select_image);
					if(mysqli_num_rows($result_img) > 0) {
						while ($row_img = mysqli_fetch_assoc($result_img)) {
							echo '<img src="' .$row_img['DuongDan']. '" style="width: 100%; height: 200px;">';
						}
					}
					//nếu phòng không có ảnh thì dùng logo (thêm vào lúc 17h16 ngày 01/05/2019)
					else echo '<img src="images/icon-acount.png" alt="" style="width: 100%; height: 200px;">';
				?>
			</a>
			<div class="caption" style="background-color: #2E3339;">
				<div style="border-bottom: solid gray 1px; color: white; height: 45px; overflow: hidden;">
					<a href="ChiTietCanPhong.php?id=<?php echo $row['IDPhongTro']; ?>&type=<?php echo $row['KieuPhong']; ?>" class="title_of_news link_for_room_detail">
						<b><?php echo $row['TieuDe']; ?></b>
					</a>
				</div>
				<div class="row" style="color: #33cc66;">
					<div class="col-lg-6"><?php echo str_replace(['Quận ', 'Huyện '], '', $row['QuanHuyen']); ?></div>
					<div class="col-lg-6 text-right"><?php echo $row['GiaChoThue']; ?> đ</div>
				</div>
			</div>
		</div>
	</div> <!-- end 1 cot -->

	<?php
	}

	//Phần pagination hiển thị số lượng trang
	$pre_page = $page;//kiểm tra xem nút previous có thể click được không, nếu click được thì chuyển trang

	$next_page = $page; //kiểm tra xem nút next có thể click được k nếu click được thì chuyển trang

	echo '<div class="col-xs-12">
	<ul class="pagination pull-right">';
	if($page>1) {
	$pre_page = $page - 1;
	echo '<li><a style="margin: 0px 3px;" type="button" class="btn btn-default" href="index.php?page=' .$pre_page. '"><</a></li>';
	} else {
	echo '<li class="disabled"> <span><</span> </li>';
	}

	for($pos_page=1; $pos_page<=$number_of_pages; $pos_page++) {
	if($pos_page == $page) {
		echo '<li class="active"><span>' .$pos_page. '</span></li>';
	} else {
		echo '<li><a style="margin: 0px 3px;" type="button" class="btn btn-default" href="index.php?page=' .$pos_page. '">' .$pos_page. '</a></li>';
	}

	}

	if($page<$number_of_pages) {
	$next_page = $page + 1;
	echo '<li><a style="margin: 0px 3px;" type="button" class="btn btn-default" href="index.php?page=' .$next_page. '">></a></li>';
	} else {
	echo '<li class="disabled"> <span>></span> </li>';
	}
	echo '</ul>
	</div>';

?>