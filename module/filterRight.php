<script type="text/javascript">
	function validateSearchingForm() {
		var checkboxKieuPhong = document.getElementsByName("KieuPhong");
		var KieuPhongChecked = false;
		for (var i = 0; i < checkboxKieuPhong.length; i++){
			if (checkboxKieuPhong[i].checked === true){
				KieuPhongChecked = true;
			}
		}
		var checkboxKieuVeSinh = document.getElementsByName("KieuVeSinh");
		var KieuVeSinhChecked = false;
		for (var i = 0; i < checkboxKieuVeSinh.length; i++){
			if (checkboxKieuVeSinh[i].checked === true){
				KieuVeSinhChecked = true;
			}
		}
		if (document.getElementById("district_select").value == ""
			&& document.getElementById("xaPhuongSelect").value == ""
			&& document.getElementById("price_from").value == "0"
			&& document.getElementById("price_to").value == "5000000"
			&& KieuPhongChecked == false
			&& KieuVeSinhChecked == false) {
			return false;
		}
}
</script>

<!-- Phần filter tìm kiếm -->
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
				<h2 class="text-center" style="color: green; border-bottom: green solid 1px; padding-bottom: 7px; margin-top: 15px;">Bộ lọc tìm kiếm</h2>
				<form action="./KetQuaTimKiem.php" method="GET" onsubmit="return validateSearchingForm()">
					<div class="col-xs-12">
					<h3 style="color: #33cc66">Chọn khu vực</h3>
					<select class="filter_option select_tags" id="district_select" onchange="setUpXaPhuongFilter(this)">
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
						<option class="select_filter" value="">Chọn xã, phường</option>
					</select>
				</div>
				<div class="col-xs-12">
					<h3 style="color: #33cc66">Chọn loại phòng</h3>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 5px 0px;">
						<input name="KieuPhong" type="radio" value="Phòng trọ" /> Phòng trọ
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 5px 0px;">
						<input name="KieuPhong" type="radio" value="Nhà nguyên căn" /> Nhà nguyên căn
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 5px 0px;">
						<input  name="KieuPhong" type="radio" value="Ở ghép"> Ở ghép
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 5px 0px;">
						<input  name="KieuPhong" type="radio" value="Tất cả"> Tất cả
					</div>
				</div>
				<div class="col-xs-12">
					<h3 style="color: #33cc66">Chọn khoảng giá</h3>
					<div class="row col-lg-12" style="margin: 0px; padding: 0px;">
						<input class="col-lg-4 col-md-4 col-sm-4 col-xs-4 price_filter" type="number" min="0" value="0" id="price_from">
						<p class="col-lg-4 col-md-4 col-sm-4 col-xs-4 text-center" style="color: white;">Đến</p>
						<input class="col-lg-4 col-md-4 col-sm-4 col-xs-4 price_filter" type="number" min="0" value="5000000" id="price_to">
					</div>
				</div>
				<div class="col-xs-12">
					<h3 style="color: #33cc66">Chọn kiểu vệ sinh</h3>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 5px 0px;">
						<input name="KieuVeSinh" type="radio" value="Khép kín" /> Khép kín
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 5px 0px;">
						<input name="KieuVeSinh" type="radio" value="Không khép kín" /> Không khép kín
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding: 5px 0px;">
						<input  name="KieuVeSinh" type="radio" value="Tất cả"> Tất cả
					</div>
				</div>
				<div class="col-xs-12 filter_option" style="width: 100%; text-align: center;">
					<button id="searching_button" type="submit" class="btn btn-success" name="searching_button">Tìm kiếm</button>
				</div>
				</form>
			</div>


