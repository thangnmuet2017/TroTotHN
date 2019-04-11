<?php 
	//kết nối đến CSDL
	include('./controller/connectToDatabase.php');

	$sql = "SELECT gia_phong_tro.IDPhongTro, dia_chi_phong_tro.QuanHuyen, SUBSTRING(gia_phong_tro.TieuDe, 1, 60) AS TieuDe, gia_phong_tro.GiaChoThue FROM dia_chi_phong_tro, gia_phong_tro WHERE dia_chi_phong_tro.IDPhongTro=gia_phong_tro.IDPhongTro ORDER BY gia_phong_tro.ThoiGianDang DESC";
	$result = mysqli_query($conn, $sql);
	if (mysqli_num_rows($result) > 0) {
    // output data of each row
    	while($row = mysqli_fetch_assoc($result)) {
?>

<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
	<div class="thumbnail">
		<a href="ChiTietCanPhong.php?id=<?php echo $row['IDPhongTro']; ?>" class="link_for_room_detail">
			<img src="images/icon-acount.png" alt="">
		</a>
		<div class="caption" style="background-color: #2E3339;">
			<div style="border-bottom: solid gray 1px; color: white; height: 45px; overflow: hidden;">
				<a href="ChiTietCanPhong.php?id=<?php echo $row['IDPhongTro']; ?>" class="title_of_news link_for_room_detail">
					<b><?php echo $row['TieuDe']; ?></b>
				</a>
			</div>
			<div class="row" style="color: #33cc66;">
				<div class="col-lg-6"><?php echo $row['QuanHuyen']; ?></div>
				<div class="col-lg-6 text-right"><?php echo $row['GiaChoThue']; ?> đ</div>
			</div>
		</div>
	</div>
</div> <!-- end 1 cot -->

<?php
		}
	}
?>